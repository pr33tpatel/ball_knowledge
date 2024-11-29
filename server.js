const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');
const { resourceLimits } = require('worker_threads');

const app = express();
const PORT = 3000;

app.use(cors()); // allow request from the website
app.use(express.json()); // parse json request bodies

const db = mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'C0mplicated_122305', //change this to your password
    database: 'nba_players'
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

  

// start the server
app.listen(PORT, () => {
    console.log('Server is running on https://localhost:${PORT}');
});