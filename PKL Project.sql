-- CREATE DATABASE PKL;

-- CREATE TABLE Team (
--   team_id INT PRIMARY KEY,
--   name VARCHAR(50) NOT NULL,
--   city VARCHAR(50),
--   coach VARCHAR(50),
--   captain_id INT
-- );

-- CREATE TABLE Player (
--   player_id INT PRIMARY KEY,
--   name VARCHAR(50) NOT NULL,
--   position VARCHAR(30),
--   team_id INT,
--   FOREIGN KEY (team_id) REFERENCES Team(team_id)
-- );

-- CREATE TABLE `Match` (
--   match_id INT PRIMARY KEY,
--   match_date DATE,
--   host_team_id INT,
--   guest_team_id INT,
--   score_host INT,
--   score_guest INT,
--   FOREIGN KEY (host_team_id) REFERENCES Team(team_id),
--   FOREIGN KEY (guest_team_id) REFERENCES Team(team_id)
-- );

-- CREATE TABLE PlayerStats (
--   stat_id INT PRIMARY KEY,
--   match_id INT,
--   player_id INT,
--   raid_points INT,
--   tackle_points INT,
--   bonus_points INT,
--   FOREIGN KEY (match_id) REFERENCES `Match`(match_id),
--   FOREIGN KEY (player_id) REFERENCES Player(player_id)
-- );

-- INSERT INTO PlayerStats (stat_id, match_id, player_id, raid_points, tackle_points, bonus_points) VALUES
-- (141, 71, 31, 13, 2, 1),
-- (142, 71, 32, 8, 4, 0),
-- (143, 72, 33, 14, 1, 2),
-- (144, 72, 34, 7, 5, 0),
-- (145, 73, 35, 10, 3, 1),
-- (146, 73, 36, 7, 4, 0),
-- (147, 74, 37, 12, 2, 1),
-- (148, 74, 38, 9, 5, 0),
-- (149, 75, 39, 11, 1, 2),
-- (150, 75, 40, 6, 6, 0),
-- (151, 76, 1, 14, 3, 1),
-- (152, 76, 2, 7, 4, 0),
-- (153, 77, 3, 13, 2, 1),
-- (154, 77, 4, 8, 5, 0),
-- (155, 78, 5, 10, 3, 1),
-- (156, 78, 6, 6, 4, 0),
-- (157, 79, 7, 12, 2, 1),
-- (158, 79, 8, 9, 3, 0),
-- (159, 80, 9, 11, 1, 2),
-- (160, 80, 10, 7, 5, 0),
-- (161, 81, 11, 14, 2, 1),
-- (162, 81, 12, 6, 3, 0),
-- (163, 82, 13, 13, 4, 1),
-- (164, 82, 14, 8, 5, 0),
-- (165, 83, 15, 10, 3, 1),
-- (166, 83, 16, 7, 4, 0),
-- (167, 84, 17, 12, 2, 1),
-- (168, 84, 18, 9, 3, 0),
-- (169, 85, 19, 13, 1, 2),
-- (170, 85, 20, 6, 5, 0),
-- (171, 86, 21, 11, 3, 1),
-- (172, 86, 22, 7, 4, 0),
-- (173, 87, 23, 14, 2, 1),
-- (174, 87, 24, 5, 6, 0),
-- (175, 88, 25, 9, 4, 1),
-- (176, 88, 26, 7, 3, 0),
-- (177, 89, 27, 11, 2, 1),
-- (178, 89, 28, 6, 5, 0),
-- (179, 90, 29, 13, 1, 2),
-- (180, 90, 30, 5, 6, 0),
-- (181, 91, 31, 10, 3, 1),
-- (182, 91, 32, 7, 4, 0),
-- (183, 92, 33, 14, 2, 1),
-- (184, 92, 34, 6, 5, 0),
-- (185, 93, 35, 12, 1, 2),
-- (186, 93, 36, 5, 6, 0),
-- (187, 94, 37, 9, 4, 1),
-- (188, 94, 38, 7, 3, 0),
-- (189, 95, 39, 11, 2, 1),
-- (190, 95, 40, 8, 5, 0),
-- (191, 96, 1, 14, 1, 2),
-- (192, 96, 2, 5, 6, 0),
-- (193, 97, 3, 9, 3, 1),
-- (194, 97, 4, 7, 4, 0),
-- (195, 98, 5, 11, 2, 1),
-- (196, 98, 6, 8, 5, 0),
-- (197, 99, 7, 13, 1, 2),
-- (198, 99, 8, 5, 6, 0),
-- (199, 100, 9, 10, 3, 1),
-- (200, 100, 10, 6, 5, 0);

-- Q.1 List all teams and their cities.
select name,city from Team;

-- Q.2 Find all players who play in the 'Raider' position.
select name from player where position='Raider';

-- Q.3 Show all matches played where the host team scored more than 30 points.
SELECT match_id, match_date, score_host 
FROM `Match`
WHERE score_host > 30;

-- Q.4 Count the total number of players in the league.
SELECT COUNT(*) AS total_players FROM Player;

-- Q.5 Find the total raid, tackle, and bonus points of player with player_id = 31.
select player_id,SUM(tackle_points),SUM(raid_points),SUM(bonus_points)
from playerstats
where player_id = 31;

-- Q.6 Count how many matches each player has played.
SELECT player_id ,COUNT(match_id)
FROM playerstats
GROUP BY player_id;

-- Q.7 Find the average tackle points of all players.
SELECT AVG(tackle_points) AS avg_tackle
FROM playerstats;

-- Q.8 Find players who have scored more than 20 total raid points.
SELECT player_id, SUM(raid_points)
FROM PlayerStats
GROUP BY player_id
HAVING SUM(raid_points) > 20;

-- Q.9 Show match_id, player name, and team name for players who 
-- scored more than 5 tackle points.
SELECT m.match_id, p.name, t.name
FROM Player p, Team t, PlayerStats ps, `Match` m
WHERE p.team_id = t.team_id
  AND p.player_id = ps.player_id
  AND ps.match_id = m.match_id
  AND ps.tackle_points > 5;

-- Q.10 List match_id, host team name, and guest team name where host team is "Patna Pirates".
SELECT m.match_id, th.name, tg.name 
FROM `Match` m, Team th, Team tg
WHERE m.host_team_id = th.team_id
  AND m.guest_team_id = tg.team_id
  AND th.name = 'Patna Pirates';

-- Q.11 List player name, position, and team city if the player is a 
-- Raider in the "Bengaluru Bulls" team.
SELECT p.name, p.position, t.city
FROM Player p, Team t
WHERE p.team_id = t.team_id
  AND p.position = 'Raider'
  AND t.name = 'Bengaluru Bulls';


-- Q.12 WAQTD the player name, teammate name, and team city, 
-- if the teammate’s team is from ‘Mumbai’ OR the player’s position is ‘Raider’.
SELECT p1.name AS player_name, 
       p2.name AS teammate_name, 
       t.city
FROM Player p1, Player p2, Team t
WHERE p1.team_id = p2.team_id
  AND p1.player_id = p2.player_id
  AND p1.team_id = t.team_id
  AND (t.city = 'Mumbai' OR p1.position = 'Raider');


-- Q.13WAQTD the player name, teammate name, and team city, if the teammate has scored 
-- more than 10 raid points in any match.
SELECT p1.name AS player_name,
       p2.name AS teammate_name,
       t.city
FROM Player p1, Player p2, Team t, PlayerStats ps
WHERE p1.team_id = p2.team_id
  AND p1.player_id = p2.player_id
  AND p2.player_id = ps.player_id
  AND p1.team_id = t.team_id
  AND ps.raid_points > 10;

-- Q.14 WAQTD (Write a Query To Display) all players whose position is the
-- same as player_id = 5 and who scored more raid points than player_id = 10.
SELECT name
FROM Player
WHERE position = (SELECT position FROM Player WHERE player_id = 5)
  AND player_id IN (
        SELECT player_id
        FROM PlayerStats
        WHERE raid_points > (SELECT raid_points FROM PlayerStats WHERE player_id = 10 LIMIT 1)
  );


-- Q.15 WAQTD all players who belong to the same team as player_id = 7 
-- and whose total raid points are greater than player_id = 9.
SELECT name
FROM Player
WHERE team_id = (SELECT team_id FROM Player WHERE player_id = 7)
  AND player_id IN (
        SELECT player_id
        FROM PlayerStats
        GROUP BY player_id
        HAVING SUM(raid_points) > (
            SELECT SUM(raid_points) 
            FROM PlayerStats 
            WHERE player_id = 9
        ) );


