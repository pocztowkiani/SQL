# Project owner: Anna Lisowka

# CORE REQUIREMENTS:
# Create relational DB of your choice with minimum 5 tables
# Set Primary and Foreign Key constraints to create relations between the tables
# Using any type of the joins create a view that combines multiple tables in a logical way
# In your database, create a stored function that can be applied to a query in your DB
# Prepare an example query with a subquery to demonstrate how to extract data from your DB for analysis
# Create DB diagram where all table relations are shown

# ADVANCED OPTIONS:
# In your database, create a stored procedure and demonstrate how it runs
# In your database, create a trigger and demonstrate how it runs
# In your database, create an event and demonstrate how it runs
# Create a view that uses at least 3 4 base tables prepare and demonstrate a query that uses the view to produce a logically arranged result set for analysis
# Prepare an example query with group by and having to demonstrate how to extract data from your DB for analysis


#### Create relational DB of your choice with minimum 5 tables
#### Set Primary and Foreign Key constraints to create relations between the tables

DROP DATABASE IF EXISTS Europe;
CREATE DATABASE Europe;
USE Europe;

DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
c_id VARCHAR(3) NOT NULL,
country VARCHAR(22) NOT NULL,
area FLOAT(9,2),
population INT(9),
eurozone INT(1) NOT NULL,
CONSTRAINT PK_c_id PRIMARY KEY (c_id)
);
# No bool type in MYSQL Workbench

INSERT INTO countries 
(c_id, country, area, population, eurozone)
VALUES
('C1', 'Albania', 28748, 2876591, 0),
('C2', 'Andorra', 468, 77281, 1),
('C3', 'Armenia', 29743, 2924816, 0),
('C4', 'Austria', 83858, 8823054, 1),
('C5', 'Azerbaijan', 866, 9911646, 0),
('C6', 'Belarus', 20756, 9504700, 0),
('C7', 'Belgium', 30528, 11358357, 1),
('C8', 'Bosnia and Herzegovina', 51129, 3531159, 0),
('C9', 'Bulgaria', 11091, 7101859, 0), 
('C10', 'Croatia', 56594, 3888529,  0),
('C11', 'Cyprus', 9251, 1170125, 1),
('C12', 'Czech Republic', 78866, 10610947, 0),
('C13', 'Denmark', 43094, 5748796, 0),
('C14', 'Estonia', 45226, 1319133, 1),
('C15', 'Finland', 338455, 5509717, 1),
('C16', 'France', 54703, 67348000, 1),
('C17', 'Georgia', 697, 3718200,  0),
('C18', 'Germany', 357168, 82800000, 1),
('C19', 'Greece', 131957, 10768477, 1),
('C20', 'Hungary', 9303, 9797561, 0),
('C21', 'Iceland', 103, 35071, 0),
('C22', 'Ireland', 7028, 4761865, 1),
('C23', 'Italy', 301338, 60589445, 0),
('C24', 'Kazakhstan', 148, 17987736, 0),
('C25', 'Latvia', 64589, 1925800, 1),
('C26', 'Liechtenstein', 160, 38111, 0),
('C27', 'Lithuania', 653, 2800667, 1),
('C28', 'Luxembourg', 2586, 602005, 1),
('C29', 'Malta', 316, 445426, 1),
('C30', 'Moldova', 33846, 3434547, 0),
('C31', 'Monaco', 2.02, 384, 1),
('C32', 'Montenegro', 13812, 64255, 1),
('C33', 'Netherlands', 41543, 17271990, 1),
('C34', 'North Macedonia', 25713, 2103721, 0),
('C35', 'Norway', 385203, 5295619, 0),
('C36', 'Poland', 312685, 38422346, 0),
('C37', 'Portugal', 92212, 10379537, 1),
('C38', 'Romania', 238397, 19638000, 0),
('C39', 'Russia', 3969100, 144526636, 0),
('C40', 'San Marino', 61.2, 33285, 1),
('C41', 'Serbia', 88361, 7040272, 0),
('C42', 'Slovakia', 49035, 5435343, 1), 
('C43', 'Slovenia', 20273, 2066880, 1),
('C44', 'Spain', 50599, 46698151, 1),
('C45', 'Sweden', 450295, 10151588, 0),
('C46', 'Switzerland', 41285, 8401120, 0),
('C47', 'Turkey', 23764, 84680273, 0),
('C48', 'Ukraine', 603628, 42418235, 0),
('C49', 'United Kingdom', 24482, 66040229, 0),
('C50', 'Vatican City', 0.44, 1000, 1);


DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
s_id VARCHAR(3) NOT NULL,
city VARCHAR(30) NOT NULL,
country_id VARCHAR(3) NOT NULL,
capital INT(1) NOT NULL,
CONSTRAINT PK_s_id PRIMARY KEY (s_id),
FOREIGN KEY (country_id) REFERENCES countries(c_id)
);

INSERT INTO cities
(s_id, city, country_id, capital)
VALUES
('S1',  'Tira', 'C1', 1),
('S2',  'Andorra la Vella', 'C2', 1),
('S3',  'Yerevan','C3', 1),
('S4',  'Vienna', 'C4', 1),
('S5', 'Baku', 'C5', 1),
('S6', 'Minsk','C6', 1),
('S7', 'Brussels', 'C7', 1),
('S8',  'Sarajevo','C8', 1),
('S9',  'Sofia','C9', 1),
('S10', 'Zagreb', 'C10', 1),
('S11',  'Nicosia', 'C11', 1),
('S12', 'Prague','C12', 1),
('S13',  'Copenhagen','C13', 1),
('S14',  'Tallinn','C14', 1),
('S15', 'Helsinki','C15', 1),
('S16', 'Paris', 'C16', 1),
('S17', 'Tbilisi', 'C17', 1),
('S18',  'Berlin', 'C18', 1),
('S19',  'Athens', 'C19', 1),
('S20',  'Budapest','C20', 1),
('S21', 'Reykjavík', 'C21', 1),
('S22',  'Dublin','C22', 1),
('S23', 'Rome', 'C23', 1),
('S24',  'Nur-Sultan', 'C24', 1),
('S25',  'Riga', 'C25', 1),
('S26',  'Vaduz', 'C26', 1),
('S27', 'Vilnius','C27', 1),
('S28', 'Luxembourg', 'C28', 1),
('S29',  'Valletta','C29', 1),
('S30', 'Shișinău', 'C30', 1),
('S31', 'Monaco', 'C31', 1),
('S32', 'Podgorica','C32', 1),
('S33', 'Amsterdam', 'C33', 1),
('S34', 'Skopje', 'C34', 1),
('S35',  'Oslo', 'C35', 1),
('S36',  'Warsaw','C36', 1),
('S37', 'Lisbon','C37', 1),
('S38', 'Bucharest','C38', 1),
('S39',  'Moscow', 'C39', 1),
('S40', 'San Marino','C40', 1),
('S41',  'Belgrade','C41', 1),
('S42' , 'Bratislava', 'C42', 1),
('S43',  'Ljubljana','C43', 1),
('S44', 'Madrid', 'C44', 1),
('S45', 'Stockholm','C45', 1),
('S46', 'Bern','C46', 1),
('S47', 'Ankara','C47', 1),
('S48',  'Kyiv', 'C48', 1),
('S49', 'London', 'C49', 1),
('S50', 'Vatican City','C50', 1),
('S51', 'Barcelona', 'C44', 0),
('S52', 'Salisbury', 'C49', 0),
('S53', 'Pisa', 'C23', 0),
('S54', 'Le Mont-Saint-Michel', 'C16', 0),
('S55', 'Versailles', 'C16', 0),
('S56','Florence', 'C23', 0),
('S57', 'Venice', 'C23', 0),
('S58', 'Milan', 'C23', 0),
('S59','Bavaria', 'C18', 0),
('S60', 'Cordoba', 'C44', 0),
('S61','Bilbao', 'C44', 0),
('S62', 'Granada', 'C44', 0),
('S63', 'Sintra', 'C37', 0),
('S64', 'Veytaux', 'C46', 0),
('S65','Hamburg', 'C18', 0),
('S66', 'Istanbul', 'C47', 0),
('S67',  'Saint Petersburg', 'C39', 0),
('S68', 'Munich', 'C18', 0),
('S69', 'Kharkiv', 'C48', 0),
('S70','Zermatt', 'C46', 0);

DROP TABLE IF EXISTS european_union;
CREATE TABLE european_union (
e_id VARCHAR(3) NOT NULL,
country_id VARCHAR(3) NOT NULL,
accession YEAR,
GDP FLOAT (8,3),
CONSTRAINT PK_e_id PRIMARY KEY (e_id),
FOREIGN KEY (country_id) REFERENCES countries(c_id)
);

INSERT INTO european_union
(e_id, country_id, accession, GDP)
VALUES
('E1', 'C7', 1957, 506.950),
('E2', 'C16', 1957, 2483.616),
('E3', 'C33', 1957, 859.166),
('E4', 'C28', 1957, 73.313),
('E5', 'C18', 1957, 3570.620),
('E6', 'C23', 1957, 1781.221),
('E7', 'C13', 1973, 334.526),
('E8', 'C22', 1973, 421.529 ),
('E9', 'C19', 1981, 182.830),
('E10', 'C44', 1986, 1202.994),
('E11', 'C37', 1986, 211.461),
('E12', 'C4', 1995, 403.370),
('E13', 'C15', 1995, 252.523),
('E14', 'C45', 1995, 530.356),
('E15', 'C12', 2004, 238.968),
('E16', 'C11', 2004, 23.352),
('E17', 'C14', 2004, 30.660),
('E18', 'C27', 2004, 55.325),
('E19', 'C25', 2004, 32.916 ),
('E20', 'C29', 2004, 14.533),
('E21', 'C36', 2004, 570.206),
('E22', 'C42', 2004, 97.122),
('E23', 'C43', 2004, 52.020),
('E24', 'C20', 2004, 153.536),
('E25', 'C9', 2007, 67.872),
('E26', 'C38', 2013, 239.638),
('E27', 'C10', 2013, 57.310);

DROP TABLE IF EXISTS landmarks;
CREATE TABLE landmarks (
l_id INT NOT NULL AUTO_INCREMENT,
landmark VARCHAR(30) NOT NULL,
city_id VARCHAR(3),
CONSTRAINT PK_l_id PRIMARY KEY (l_id),
FOREIGN KEY (city_id) REFERENCES cities(s_id)
);

INSERT INTO landmarks
(landmark, city_id)
VALUES
('Eiffel Tower', 'S16'),
('Collosseum', 'S23'),
('Parthenon', 'S19'),
('La Sagrada Família', 'S51'),
('Stonehenge', 'S52' ),
('Leaning Tower of Pisa', 'S53'),
('St. Peter’s Basilica', 'S50'),
('Mont-Saint-Michel Abbey', 'S54'),
('Pantheon', 'S23'),
('Louvre Museum', 'S16'),
('Arc de Triomphe', 'S16'),
('Palace of Versailles', 'S55'),
('Big Ben', 'S49'),
('Palace of Westminster', 'S49'),
('Saint John’s Co-Cathedral', 'S29'),
('St Patrick’s Cathedral', 'S20'),
('Apostolic Palace', 'S50'),
('The Sistine Chapel', 'S50'),
('Trevi Fountain', 'S23'),
('Florence Cathedral', 'S56'),
('Doge s Palace', 'S57'),
('The Duomo', 'S58'),
('Buda Castle', 'S20'),
('Hungarian Parliament Building', 'S20'),
('Schönbrunn Palace', 'S4'),
('Reichstag Building', 'S18'),
('Brandenburg Gate', 'S18'),
('Neuschwanstein Castle', 'S59'),
('Grand Place', 'S7'),
('Mosque-Cathedral of Cordoba', 'S60'),
('Royal Palace of Madrid', 'S44'),
('Guggenheim Museum', 'S61'),
('Alhambra Palace', 'S62'),
('Belém Tower', 'S37'),
('Pena Palace', 'S63'),
('Chateau de Chillon', 'S64'),
('Matterhorn', 'S70'),
('Prague Castle', 'S12'),
('Charles Bridge', 'S12');


DROP TABLE IF EXISTS big_cities;
CREATE TABLE big_cities (
b_id VARCHAR(3) NOT NULL,
city_id VARCHAR(3) NOT NULL,
population INT,
location VARCHAR(30),
CONSTRAINT PK_b_id PRIMARY KEY (b_id),
FOREIGN KEY (city_id) REFERENCES cities(s_id)
);

INSERT INTO big_cities
(b_id, city_id, population, location)
VALUES
('B1', 'S66', 15840900, '41.013611°N 28.955°E'),
('B2', 'S39', 12632409, '55.75°N 37.616667°E'),
('B3', 'S49', 9002488, '51.507222°N 0.1275°W'),
('B4', 'S67', 5376672, '59.95°N 30.3°E'),
('B5', 'S18', 3664088, '52.516667°N 13.383333°E'),
('B6', 'S44', 3305408, '40.383333°N 3.716667°W'),
('B7', 'S48', 2920873, '50.45°N 30.523333°E'),
('B8', 'S23', 2844750, '41.9°N 12.5°E'),
('B9', 'S38',  2161347, '44.4325°N 26.103889°E'),
('B10', 'S16', 2139907, '48.8567°N 2.3508°E'),
('B11', 'S6', 2009786, '53.9°N 27.566667°E'),
('B12', 'S4', 1931830, '48.2°N 16.366667°E'),
('B13', 'S65', 1852478, '53.565278°N 10.001389°E'),
('B14', 'S36', 1792718, '52.233333°N 21.016667°E'),
('B15', 'S20', 1723836, '47.4925°N 19.051389°E'),
('B16', 'S41', 1694480, '44.816667°N 20.466667°E'),
('B17', 'S51',1636732, '41.383333°N 2.183333°E'),
('B18', 'S68', 1488202, '48.133333°N 11.566667°E'),
('B19', 'S69',1414319, '50.004444°N 36.231389°E'),
('B20', 'S58', 1374582, '45.466667°N 9.183333°E');

DROP TABLE IF EXISTS underground;
CREATE TABLE underground (
u_id VARCHAR(3) NOT NULL,
city_id VARCHAR(3) NOT NULL,
opening INT(4),
stations INT(3),
length FLOAT(6,1),
extension YEAR,
CONSTRAINT PK_u_id PRIMARY KEY (u_id)
);
# Type year is availabe for data from 1901 (here we have 1890 and 1900)
INSERT INTO underground
(u_id, city_id, opening, stations, length, extension )
VALUES
('U1', 'S3', 1981,	10,	13.4, 1996),
('U2', 'S4', 1976,	104, 80, 2013),
('U3', 'S5', 1967,26, 38, 2016),
('U4', 'S7', 1976, 59, 39.9, 2009),
('U5', 'S6', 1984, 33, 40.8, 2020),
('U6', 'S9', 1998, 34, 39, 2014),
('U7', 'S12', 1974, 57, 59.4, 2008),
('U8', 'S13', 2002, 39, 38.2, 2007),
('U9', 'S15', 1982, 25, 21.1, 2007),
('U10',	'S16', 1900, 303,	218.2, 2013),
('U11',	'S19', 1904, 61, 84.7, 2013),
('U12',	'S17', 1966, 22, 44588,	2000),
('U13',	'S44', 1919, 300, 310, 2010),
('U14',	'S33', 1977, 33, 42.5, 2018),
('U15',	'S18', 1902, 173, 146.3, 2009),
('U16',	'S35',	1966, 97, 86, 2006),
('U17',	'S36', 1995, 34, 35.6, 2020),
('U18',	'S37', 1959, 55, 43.2, 2012),
('U19',	'S39', 1935, 194, 424.7, 2014),
('U20',	'S38',	1979, 51, 71.4, 2011),
('U21',	'S45',1950, 100, 105.7, 1994),
('U22',	'S47', 1997, 45, 55.1, 2014),
('U23',	'S48',	1960, 52, 67.6, 2013),
('U24', 'S20',	1896, 52, 38.2, 2014),
('U25',	'S49', 1890,	270, 402, 2008),
('U26',	'S23',	1955, 74, 60, 2012);

# second way to create keys:
ALTER TABLE underground
ADD CONSTRAINT
fk_city_id
FOREIGN KEY
(city_id)
REFERENCES
cities
(s_id);

#### Using any type of the joins create a view that combines multiple tables in a logical way
DROP VIEW IF EXISTS CAPITALS;
# 1. Show the names of countries with capitals
CREATE VIEW capitals AS
	SELECT c.country, s.city AS capital
	FROM countries AS c
	JOIN cities AS s 
	ON c.c_id = s.country_id
    WHERE s.capital = 1;
    
SELECT * FROM capitals;

# 2. Show the names of landamrks and the name of cities, where they are
CREATE VIEW must_to_see AS
	SELECT l.landmark, s.city
	FROM landmarks AS l
	JOIN cities AS s
	ON l.city_id = s.s_id;

SELECT * FROM must_to_see;

# 3. Show the biggiest cities from UE and sort them by population (descending order). 
CREATE VIEW UE_metropolises AS
	SELECT  s.city, b.population
    FROM big_cities as b
	JOIN cities AS s
    ON b.city_id = s.s_id
	JOIN countries AS c
	ON s.country_id = c.c_id
    JOIN european_union as e
    ON c.c_id = e.country_id
    ORDER BY
    b.population DESC;

SELECT * FROM UE_metropolises;

#### In your database, create a stored function that can be applied to a query in your DB

# 1. Function, which counts the percentage of people, who live in one of the big cities. 
DELIMITER //
CREATE FUNCTION perc_pop_bigcity(input_pop_capital DECIMAL(15,2), input_pop_country DECIMAL(15,2))
RETURNS DECIMAL(5,2)
DETERMINISTIC
BEGIN
		DECLARE output_perc DECIMAL(5,2);
        SET output_perc = input_pop_capital/ input_pop_country *100;
        RETURN output_perc;
END//
DELIMITER ;

SELECT s.city, c.country, perc_pop_bigcity(b.population, c.population) AS percentage_of_poputation
FROM big_cities AS b
LEFT JOIN cities AS s
ON b.city_id = s.s_id
JOIN countries AS c
ON s.country_id= c.c_id
ORDER BY percentage_of_poputation DESC

# 2. Function, which estimates how long to the next station.

DELIMITER //
CREATE FUNCTION how_long_to_the_station(input_stations INT, input_lengths INT)
RETURNS VARCHAR(35)
DETERMINISTIC
BEGIN
		DECLARE answer VARCHAR(35);
        
        IF input_stations/input_lengths < 0.5 THEN
			SET answer = "It's very close.";
		ELSEIF input_stations/input_lengths < 1 THEN
			SET answer = "You need go less than 15 minutes.";
		ELSE 
			SET answer = "Go by bus!";
		END IF;
        
        RETURN (answer);
END// 
DELIMITER ;

SELECT s.city, how_long_to_the_station(u.stations, u.length) AS how_long, u.stations/u.length AS result
FROM underground AS u
LEFT JOIN cities AS s
ON u.city_id = s.s_id;


#### Prepare an example query with a subquery to demonstrate how to extract data from your DB for analysis

# Select the countries from the EU, if their capitals are big cities with population more than 2 000 000 and extendend undergrround in the last 10 years
SELECT c.country
FROM countries as c
WHERE c.c_id IN(
	SELECT e.country_id
	FROM european_union AS e
	WHERE e.country_id 	IN(
		SELECT c.c_id
		FROM countries AS c
		WHERE c.c_id IN(
			SELECT s.country_id
			FROM cities as s
			WHERE s.s_id IN(
				SELECT b.city_id
				FROM big_cities as b
				WHERE b.population > 2000000 AND b.city_id IN (
					SELECT s.s_id
					FROM cities AS s
					WHERE s.capital = TRUE AND s.s_id IN(
						SELECT u.city_id
						FROM underground AS u
						WHERE u.extension >= YEAR(UTC_TIMESTAMP())-10
						)
					)
				)
			)
		)
	)
;

####  In your database, create a stored procedure and demonstrate how it runs.

# Procedure should tell you the idea for the next holiday.

DELIMITER //
CREATE PROCEDURE i_need_holidays()
BEGIN
    SELECT CONCAT('Go to ', l.landmark, ' in ', s.city, "!") AS destination
	FROM landmarks AS l
	LEFT JOIN cities as s
	ON l.city_id=s.s_id
	ORDER BY RAND()
	LIMIT 1;
END//
DELIMITER ; 

CALL i_need_holidays

#### In your database, create a trigger and demonstrate how it runs 

#1. Change the first letter for upper and next for lower

DELIMITER //
CREATE TRIGGER Cities_Before_Insert
BEFORE INSERT ON cities
FOR EACH ROW
BEGIN
	SET NEW.city = 	
		CONCAT(UPPER(SUBSTRING(NEW.city,1,1)), LOWER(SUBSTRING(NEW.city FROM 2)));
END //
DELIMITER ;

INSERT INTO cities (s_id, city, country_id, capital)
VALUES('S71','nice','C16','0');

INSERT INTO cities (s_id, city, country_id, capital)
VALUES('S72','TURIN', 'C23', 0);

SELECT *
FROM cities
WHERE s_id IN ('S71', 'S72');

# 2. Count density in table countries.
ALTER TABLE countries
ADD density FLOAT(9,2);

DELIMITER //
CREATE TRIGGER Density_Before_Insert
BEFORE INSERT ON countries
FOR EACH ROW
BEGIN
	SET new.density = new.population /new.area;
END//
DELIMITER ;

INSERT INTO countries 
(c_id, country, area, population, eurozone)
VALUES
('C99', 'USA', 9834000, 329500000, 0);

SELECT *
FROM countries
WHERE c_id = 'C99';

#### In your database, create an event and demonstrate how it runs

CREATE TABLE messages (
    id INT PRIMARY KEY AUTO_INCREMENT,
    message VARCHAR(255) NOT NULL,
    dateofchceck DATETIME NOT NULL
);

SHOW PROCESSLIST;
SET GLOBAL event_scheduler = ON;
SHOW PROCESSLIST;

CREATE EVENT IF NOT EXISTS test_event_01
ON SCHEDULE AT CURRENT_TIMESTAMP
DO
  INSERT INTO messages(message, dateofcheck)
  VALUES('Tested',NOW());

SELECT * FROM messages;

SET GLOBAL event_scheduler = OFF;

#### Create a view that uses at least 3 - 4 base tables prepare and demonstrate a query that uses the view to produce a logically arranged result set for analysis

# A view with the cities with the oldest undegrounds, for the countries who join to UE after 1990
CREATE VIEW oldest_undergrounds_UE AS
	SELECT u.opening, s.city
	FROM  underground AS u
	JOIN cities AS s
	ON u.city_id = s.s_id
	JOIN countries AS c
    ON s.country_id = c.c_id
    JOIN european_union AS e
    ON c.c_id = e.country_id
    WHERE e.accession>1990
    ORDER BY u.opening
    ;

SELECT *
FROM oldest_undergrounds_UE;

#### Prepare an example query with group by and having to demonstrate how to extract data from your DB for analysis

# 1. Which accesions are the bigest (if we look on population). Show these over 15000000 people. Save the result in csv file.
SELECT  e.accession, sum(c.population)
FROM european_union AS e
LEFT JOIN countries AS c
ON e.country_id = c.c_id
GROUP BY e.accession
HAVING SUM(c.population)>15000000
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/ueaccession2.csv'
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY ''
LINES TERMINATED BY '\r\n'
;

# 2. In which countries are more than 3 famous landmarks? Save the result in csv file.
SELECT c.country
FROM landmarks AS l
JOIN cities AS s
ON l.city_id = s.s_id
JOIN countries AS c
ON s.country_id = c.c_id
GROUP BY c.country
HAVING count(l.landmark)>3
ORDER BY count(l.landmark) DESC
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/countrywithlandmarks2.csv'
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY ''
LINES TERMINATED BY '\r\n'
;

