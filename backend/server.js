const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');
require('dotenv').config();
const { resourceLimits } = require('worker_threads');

const app = express();
const PORT = 3000;

app.use(cors()); // allow request from the website
app.use(express.json()); // parse json request bodies

const db = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD, //change this to your password
    database: process.env.DB_NAME
});


db.connect((err) => {
    if (err) {
        console.error('Database connection error:', err);
    } else {
        console.log('Connect to MySQL database.');
    }
});

// API routes to get player data
app.get('/players', (req, res) => {
    const name = req.query.name || '';
    const query = `SELECT * FROM players JOIN player_stats on players.player_id = player_stats.player_id WHERE player_name LIKE ?`;
//SELECT * FROM players JOIN player_stats on players.player_id = player_stats.player_id;
//SELECT * FROM players WHERE player_name LIKE ? 
    console.log(`Query: ${query}, Parameter: %${name}%`); // Log query and parameter

    db.query(query, [`%${name}%`], (err, results) => {
        if (err) {
            console.error('Database query error:', err); // Log error details
            return res.status(500).send({ error: 'Database query failed', details: err.message });
        }
        res.send(results);
    });
});

// API routes to get team data
app.get('/teams', (req, res) => {
    const team_abbreviation = req.query.name || '';
    const season_id = req.query.season || '';

    let query = `
        SELECT 
            P.player_name, 
            T.team_abbreviation, 
            PS.pts, 
            PS.reb, 
            PS.ast, 
            PS.gp, 
            P.season_id
        FROM players P
        JOIN player_stats PS ON P.player_id = PS.player_id
        JOIN teams T ON P.team_abbreviation = T.team_abbreviation
        WHERE T.team_abbreviation = ? 
        ${season_id ? 'AND P.season_id = ?' : ''};
    `;

    console.log(`Query: ${query}`);
    const params = [team_abbreviation];
    if (season_id) params.push(season_id);

    db.query(query, params, (err, results) => {
        if (err) {
            console.error('Database query error:', err);
            return res.status(500).send({ error: 'Database query failed', details: err.message });
        }

        res.send(results);
    });
});


app.post('/players', (req, res) => {
    const { player_id, player_name } = req.body;

    // Input validation
    if (!player_id || !Number.isInteger(player_id)) {
        return res.status(400).send({ error: 'player_id is required and must be an integer' });
    }
    if (!player_name || player_name.trim() === '') {
        return res.status(400).send({ error: 'player_name is required' });
    }

    // Query to insert into `players` table
    const insertPlayerQuery = `INSERT INTO players (player_id, player_name) VALUES (?, ?)`;

    // Query to insert into `player_stats` table
    const insertPlayerStatsQuery = `INSERT INTO player_stats (player_id) VALUES (?)`;

    // Execute the `players` insertion query
    db.query(insertPlayerQuery, [player_id, player_name], (err, results) => {
        if (err) {
            console.error('Error inserting into players table:', err);
            return res.status(500).send({ error: 'Failed to insert into players table', details: err.message });
        }

        console.log('Inserted into players table:', results);

        // Execute the `player_stats` insertion query
        db.query(insertPlayerStatsQuery, [player_id], (err, results) => {
            if (err) {
                console.error('Error inserting into player_stats table:', err);
                return res.status(500).send({ error: 'Failed to insert into player_stats table', details: err.message });
            }

            console.log('Inserted into player_stats table:', results);

            res.status(201).send({
                message: 'Player and stats added successfully',
                player_id: player_id,
            });
        });
    });
});

app.delete('/players/:player_id', (req,res) => {
    const {player_id} = req.params;

    if (!player_id || !Number.isInteger(parseInt(player_id,10))) {
        return res.status(400).send({ error: 'player_id is required and must be an integer' });
    }
    
    const deletePlayerStatsQuery = `DELETE FROM player_stats WHERE player_id = ?`;

    const deletePlayerQuery = `DELETE FROM players WHERE player_id = ?`;

    db.query(deletePlayerStatsQuery, [player_id], (err, results) => {
        if (err) {
            console.error('Error deleting from player_stats table: ', err);
            return res.status(500).send({ error: 'Delete from player_stats failed', details: err.message});
        }

        console.log('Deleted from player_stats table:', results);

        db.query(deletePlayerQuery, [player_id], (err, results) => {
            if (err) {
                console.error('Error deleting from players table: ', err);
                return res.status(500).send({ error: 'Delete from players failed', details: err.message});
            }

            console.log('Deleted from players table:', results);

            res.status(200).send({
                message: 'Deleted successfully from players and player_stats',
                player_id: player_id,
            });
        });
    });
});

// start the server
app.listen(PORT, () => {
    console.log('Server is running on http://localhost:${PORT}');
});
