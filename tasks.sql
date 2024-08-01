Task:
create 2 tables with 5 columns insert 10 data for each table.
use constraint for all columns: not null,primary key,
use between to fetch data.
use like to check the pattern.
use order by for sorting the data.
use upper,lower, concat,length function
create index for any column and fetch data.
use things;
CREATE TABLE Fish (
    FishID BIGINT PRIMARY KEY,
    Species VARCHAR(50) NOT NULL,
    Color VARCHAR(50) NOT NULL,
    Size INT CHECK (Size > 0),
    Habitat VARCHAR(100) NOT NULL
);
INSERT INTO Fish VALUES (1, 'Goldfish', 'Golden', 15, 'Freshwater');
INSERT INTO Fish VALUES (2, 'Clownfish', 'Orange', 10, 'Saltwater');
INSERT INTO Fish VALUES (3, 'Betta', 'Red', 6, 'Freshwater');
INSERT INTO Fish VALUES (4, 'Guppy', 'Multicolor', 4, 'Freshwater');
INSERT INTO Fish VALUES (5, 'Angelfish', 'Silver', 20, 'Freshwater');
INSERT INTO Fish VALUES (6, 'Tetra', 'Neon', 5, 'Freshwater');
INSERT INTO Fish VALUES (7, 'Salmon', 'Pink', 75, 'Saltwater');
INSERT INTO Fish VALUES (8, 'Catfish', 'Gray', 50, 'Freshwater');
INSERT INTO Fish VALUES (9, 'Shark', 'Gray', 300, 'Saltwater');
INSERT INTO Fish VALUES (10, 'Trout', 'Brown', 70, 'Freshwater');

SELECT * FROM Fish
WHERE Size BETWEEN 10 AND 50;
SELECT * FROM Fish
WHERE FishID BETWEEN 5 AND 8;

SELECT * FROM Fish
WHERE Species LIKE 'G%';
SELECT * FROM Fish
WHERE Species LIKE '_e%';

SELECT * FROM Fish
ORDER BY Size ASC;

SELECT * FROM Fish
ORDER BY Species DESC;

SELECT UPPER(Species) AS SpeciesUpper FROM Fish;
SELECT LOWER(Color) AS ColorLower FROM Fish;
SELECT CONCAT(Species, ' - ', Color) AS SpeciesColor FROM Fish;
SELECT Habitat, LENGTH(Habitat) AS HabitatLength FROM Fish;

CREATE INDEX idx_species ON Fish(Species);
SELECT * FROM Fish WHERE Species = 'Clownfish';


-------------------------------- CAR TABLE---------------------------------------
CREATE TABLE Cars (
    CarID BIGINT PRIMARY KEY,
    Make VARCHAR(50) NOT NULL,
    Model VARCHAR(50) NOT NULL,
    Year INT CHECK (Year > 1885), 
    Price INT CHECK (Price >= 0)
);
INSERT INTO Cars VALUES(1, 'Toyota', 'Camry', 2020, 24000);
INSERT INTO Cars VALUES(2, 'Ford', 'Mustang', 2021, 55000);
INSERT INTO Cars VALUES(3, 'Honda', 'Civic', 2019, 20000);
INSERT INTO Cars VALUES(4, 'Tesla', 'Model 3', 2022, 40000);
INSERT INTO Cars VALUES(5, 'Chevrolet', 'Impala', 2018, 28000);
INSERT INTO Cars VALUES(6, 'BMW', 'X5', 2021, 60000);
INSERT INTO Cars VALUES(7, 'Audi', 'A4', 2017, 35000);
INSERT INTO Cars VALUES(8, 'Mercedes-Benz', 'C-Class', 2020, 42000);
INSERT INTO Cars VALUES(9, 'Hyundai', 'Elantra', 2019, 18000);
INSERT INTO Cars VALUES(10, 'Nissan', 'Altima', 2021, 25000);

SELECT * FROM Cars WHERE Price BETWEEN 20000 AND 40000;

SELECT * FROM Cars WHERE Model LIKE 'C%';

SELECT * FROM Cars ORDER BY Price DESC;

SELECT UPPER(Make) AS MakeUpper FROM Cars;

SELECT LOWER(Model) AS ModelLower FROM Cars;

SELECT CONCAT(Make, ' ', Model) AS FullName FROM Cars;

SELECT Make, LENGTH(Make) AS MakeLength FROM Cars;

CREATE INDEX idx_make ON Cars(Make);

SELECT * FROM Cars WHERE Make = 'Toyota';

