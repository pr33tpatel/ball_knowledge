--Query that will return the number of point guards that have won the MVP,
select *
from nba_players_players
where [position]='PG' and player_id in
 (select player_id from nba_players_achievements where achievement='MVP');


 --Query that will return the players with the most MVPs
SELECT player_id, COUNT(player_id) AS mvp_count
FROM nba_players_achievements
WHERE achievement = 'MVP'
GROUP BY player_id
ORDER BY mvp_count DESC;


--query that lists the roty players between certain years

select *
from nba_players_players
where player_id in
 (select player_id from nba_players_achievements where achievement ='roty' and season_id between '2005' and '2012');

 --query that returns the 10 players with the highest total points 

 select player_id, sum(points) as total_points 
    from nba_players_stats
    order by total_points DESC
    limit 10;
-- same as above for assists
select player_id, sum(ast) as total_assists
    from nba_players_stats
    group by player_id
    order by total_assists DESC
    limit 10;


--query for returning championship roster
SELECT
p.name as player_name,
P.position
from 
    players P
join 
    Teams T on P.team = T.Team_id
join 
    seasons S on T.team_id =S.champion
where 
    S.season_id = 2022;