DROP DATABASE IF EXISTS Europe;
CREATE DATABASE Europe;
USE Europe;


DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
c_id VARCHAR(3),
country VARCHAR(30),
area INT,
population INT,
capital VARCHAR(20)
);

 INSERT INTO countries 
(c_id, country, area, population, capital)
VALUES
('C1', 'Albania', 28748, 2876591, 'Tirana'),
('C2', 'Andorra', 468, 77281, 'Andorra la Vella'),
('C3', 'Armenia', 29743, 2924816, 'Yerevan'),
('C4', 'Austria', 83858, 8823054, 'Vienna'),
('C5', 'Azerbaijan', 866, 9911646, 'Baku'),
('C6', 'Belarus', 20756, 9504700, 'Minsk'),
('C7', 'Belgium', 30528, 11358357, 'Brussels'),
('C8', 'Bosnia and Herzegovina', 51129, 3531159, 'Sarajevo'),
('C9', 'Bulgaria', 11091, 7101859, 'Sofia'),
('C10', 'Croatia', 56594, 3888529, 'Zagreb'),
('C11', 'Cyprus', 9251, 1170125, 'Nicosia'),
('C12', 'Czech Republic', 78866, 10610947, 'Prague'),
('C13', 'Denmark', 43094, 5748796, 'Copenhagen'),
('C14', 'Estonia', 45226, 1319133, 'Tallinn'),
('C15', 'Finland', 338455, 5509717, 'Helsinki'),
('C16', 'France', 54703, 67348000, 'Paris'),
('C17', 'Georgia', 697, 3718200, 'Tbilisi'),
('C18', 'Germany', 357168, 82800000, 'Berlin'),
('C19', 'Greece', 131957, 10768477, 'Athens'),
('C20', 'Hungary', 9303, 9797561, 'Budapest'),
('C21', 'Iceland', 103, 35071, 'Reykjavík'),
('C22', 'Ireland', 7028, 4761865, 'Dublin'),
('C23', 'Italy', 301338, 60589445, 'Rome'),
('C24', 'Kazakhstan', 148, 17987736, 'Nur-Sultan'),
('C25', 'Latvia', 64589, 1925800, 'Riga'),
('C26', 'Liechtenstein', 160, 38111, 'Vaduz'),
('C27', 'Lithuania', 653, 2800667, 'Vilnius'),
('C28', 'Luxembourg', 2586, 602005, 'Luxembourg'),
('C29', 'Malta', 316, 445426, 'Valletta'),
('C30', 'Moldova', 33846, 3434547, 'Chișinău'),
('C31', 'Monaco', 2.020, 384, 'Monaco'),
('C32', 'Montenegro', 13812, 64255, 'Podgorica'),
('C33', 'Netherlands', 41543, 17271990, 'Amsterdam'),
('C34', 'North Macedonia', 25713, 2103721, 'Skopje'),
('C35', 'Norway', 385203, 5295619, 'Oslo'),
('C36', 'Poland', 312685, 38422346, 'Warsaw'),
('C37', 'Portugal', 92212, 10379537, 'Lisbon'),
('C38', 'Romania', 238397, 19638000, 'Bucharest'),
('C39', 'Russia', 3969100, 144526636, 'Moscow'),
('C40', 'San Marino', 61.2, 33285, 'San Marino'),
('C41', 'Serbia', 88361, 7040272, 'Belgrade'),
('C42', 'Slovakia', 49035, 5435343, 'Bratislava'),
('C43', 'Slovenia', 20273, 2066880, 'Ljubljana'),
('C44', 'Spain', 50599, 46698151, 'Madrid'),
('C45', 'Sweden', 450295, 10151588, 'Stockholm'),
('C46', 'Switzerland', 41285, 8401120, 'Bern'),
('C47', 'Turkey', 23764, 84680273, 'Ankara'),
('C48', 'Ukraine', 603628, 42418235, 'Kyiv'),
('C49', 'United Kingdom', 24482, 66040229, 'London'),
('C50', 'Vatican City', 0.44, 1000, 'Vatican City');

DROP TABLE IF EXISTS european_union;
CREATE TABLE european_union (
e_id VARCHAR(3),
country VARCHAR(30),
accession INT
);

INSERT INTO european_union
(e_id, country, accession)
VALUES
('E1', 'Belgium', 1957),
('E2', 'France', 1957),
('E3', 'Netherlands', 1957),
('E4', 'Luxembourg', 1957),
('E5', 'Germany', 1957),
('E6', 'Italy', 1957),
('E7', 'Denmark', 1973),
('E8', 'Ireland', 1973),
('E9', 'Greece', 1981),
('E10', 'Spain', 1986),
('E11', 'Portugal', 1986),
('E12', 'Austria', 1995),
('E13', 'Finland', 1995),
('E14', 'Sweden', 1995),
('E15', 'Czech Republic', 2004),
('E16', 'Cyprus', 2004),
('E17', 'Estonia', 2004),
('E18', 'Lithuania', 2004),
('E19', 'Latvia', 2004),
('E20', 'Malta', 2004),
('E21', 'Poland', 2004),
('E22', 'Slovakia', 2004),
('E23', 'Slovenia', 2004),
('E24', 'Hungary', 2004),
('E25', 'Bulgaria', 2007),
('E26', 'Romania', 2013),
('E27', 'Croatia', 2013);

DROP TABLE IF EXISTS euro_zone;
CREATE TABLE euro_zone (
z_id VARCHAR(3),
country VARCHAR(30)
);

INSERT INTO euro_zone
(z_id, country)
VALUES
('Z1', 'Austria'),
('Z2', 'Belgium'),
('Z3', 'Finland'),
('Z4', 'France'),
('Z5', 'Greece'),
('Z6', 'Spain'),
('Z7', 'Netherlands'),
('Z8', 'Ireland'),
('Z9', 'Luxembourg'),
('Z10', 'Germany'),
('Z11', 'Ireland'),
('Z12', 'Portugal'),
('Z13', 'Slovenia'),
('Z14', 'Cyprus'),
('Z15', 'Malta'),
('Z16', 'Slovakia'),
('Z17', 'Estonia'),
('Z18', 'Latvia'),
('Z19', 'Lithuania'),
('Z20', 'Monaco'),
('Z21', 'San Marino'),
('Z22', 'Vatican City'),
('Z23', 'Andorra'),
('Z24', 'Montenegro');

DROP TABLE IF EXISTS big_cities;
CREATE TABLE big_cities (
b_id VARCHAR(3),
city VARCHAR(20),
country VARCHAR(30),
population INT,
location VARCHAR(30)
);

INSERT INTO big_cities
(b_id, city, country, population, location)
VALUES
('B1', 'Istanbul', 'Turkey', 15840900, '41.013611°N 28.955°E'),
('B2', 'Moscow', 'Russia', 12632409, '55.75°N 37.616667°E'),
('B3', 'London', 'United Kingdom', 9002488, '51.507222°N 0.1275°W'),
('B4', 'Saint Petersburg', 'Russia', 5376672, '59.95°N 30.3°E'),
('B5', 'Berlin', 'Germany', 3664088, '52.516667°N 13.383333°E'),
('B6', 'Madrid', 'Spain', 3305408, '40.383333°N 3.716667°W'),
('B7', 'Kyiv', 'Ukraine', 2920873, '50.45°N 30.523333°E'),
('B8', 'Rome', 'Italy', 2844750, '41.9°N 12.5°E'),
('B9', 'Bucharest', 'Romania', 2161347, '44.4325°N 26.103889°E'),
('B10', 'Paris', 'France', 2139907, '48.8567°N 2.3508°E'),
('B11', 'Minsk', 'Belarus', 2009786, '53.9°N 27.566667°E'),
('B12', 'Vienna', 'Austria', 1931830, '48.2°N 16.366667°E'),
('B13', 'Hamburg', 'Germany', 1852478, '53.565278°N 10.001389°E'),
('B14', 'Warsaw', 'Poland', 1792718, '52.233333°N 21.016667°E'),
('B15', 'Budapest', 'Hungary', 1723836, '47.4925°N 19.051389°E'),
('B16', 'Belgrade', ' Serbia', 1694480, '44.816667°N 20.466667°E'),
('B17', 'Barcelona', 'Spain', 1636732, '41.383333°N 2.183333°E'),
('B18', 'Munich', 'Germany', 1488202, '48.133333°N 11.566667°E'),
('B19', 'Kharkiv', 'Ukraine', 1414319, '50.004444°N 36.231389°E'),
('B20', 'Milan', 'Italy', 1374582, '45.466667°N 9.183333°E'),
('B21', 'Prague', 'Czech Republic', 1335084, '50.083333°N 14.416667°E'),
('B22', 'Kazan', 'Russia', 1257341, '55.790278°N 49.134722°E'),
('B23', 'Nizhny Novgorod', 'Russia', 1244254, '56.326944°N 44.0075°E'),
('B24', 'Sofia', 'Bulgaria', 1308412, '42.7°N 23.33°E'),
('B25', 'Samara', 'Russia', 1144759, '53.202778°N 50.140833°E'),
('B26', 'Birmingham', 'United Kingdom', 1140525, '52.483056°N 1.893611°W'),
('B27', 'Rostov-on-Don', 'Russia', 1137704, '47.233333°N 39.7°E'),
('B28', 'Ufa', 'Russia', 1125933, '54.75°N 55.966667°E'),
('B29', 'Cologne', 'Germany', 1083498, '50.936389°N 6.952778°E'),
('B30', 'Voronezh', 'Russia', 1050602, '51.671667°N 39.210556°E'),
('B31', 'Perm', 'Russia', 1049199, '58°N 56.316667°E'),
('B32', 'Volgograd', 'Russia', 1004763, '48.7°N 44.516667°E');

DROP TABLE IF EXISTS no_passport;
CREATE TABLE no_passport (
p_id VARCHAR(3),
country VARCHAR(30)
);

INSERT INTO no_passport
(p_id, country)
VALUES
('P1', 'Austria'),
('P2', 'Belgium'),
('P3', 'Czech Republic'),
('P4', ' Denmark'),
('P5', ' Estonia'),
('P6', ' Finland'),
('P7', ' France'),
('P8', ' Germany'),
('P9', ' Greece'),
('P10', ' Hungary'),
('P11', ' Iceland'),
('P12', ' Italy'),
('P13', ' Latvia'),
('P14', ' Liechtenstein'),
('P15', ' Lithuania'),
('P16', ' Luxembourg'),
('P17', ' Malta'),
('P18', ' Netherlands'),
('P19', ' Norway'),
('P20', ' Poland'),
('P21', ' Portugal'),
('P22', ' Slovakia'),
('P23', ' Slovenia'),
('P24', ' Spain'),
('P25', 'Sweden'),
('P26', 'Switzerland'),
('P27', 'Monaco'),
('P28', 'San Marino'),
('P29', 'Vatican City');
