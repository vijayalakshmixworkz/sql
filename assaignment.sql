/*CREATE 5 TABLES with 7 columns.
Note: Each table should have 7 columns(4 columns should have varchar,
2 columns int, 2 columns bigint).*/
CREATE DATABASE things;
CREATE TABLE cinema(id int, cinema_name varchar(10),heroName varchar(10),heroineName varchar(10),directorName varchar(10), noOfActors int, budget bigint,profit bigint);
CREATE TABLE shirt(id int,color varchar(10), brand varchar(10),size varchar(10), typeOfCloth varchar(10), centiMeters int, batchNo bigint, sequenceId bigint);
CREATE TABLE bag(id int, brand varchar(10),colour varchar(10),materialUsed varchar(10), size varchar(10), zips int, manufactureNo bigint,price bigint);
CREATE TABLE train(id int, sourceName varchar(10),destination varchar(10),trainName varchar(10), viaRoute varchar(10),noOfCompartments int, noPassengers bigint,ticketPrice bigint);

CREATE 2 TABLES WITH 5 COLUMNS.
TABLE NAME: employee_details, airport_details.
FOR ABOVE 2 TABLES:
1)ADD 5 NEW COLUMNS USING ALTER.bank_details
2)REMOVE 2 COLUMNS USING ALTER.
3)RENAME 5 COLUMNS USING ALTER.
4)CHANGE DATATYPE FOR 5 COLUMNS USING ALTER.

USE things;
CREATE TABLE employee_details(
id int,
employee_name varchar(10),
employee_salary bigint,
designation varchar(10),
email varchar(10)
); 
CREATE table airport_details(
id int,
place varchar(10),
airport_name varchar(10),
no_of_flights int,
passengers bigint
);
alter table employee_details add column contact bigint;
alter table employee_details add column education varchar(10);
alter table employee_details add column marital_status varchar(10);
alter table employee_details add column citizenship varchar(10);

alter table airport_details add column  city varchar(10);
alter table airport_details add column  weather varchar(10);
alter table airport_details add column  flight_name varchar(10);
alter table airport_details add column  ticket_price bigint;
alter table airport_details add column  no_of_platforms int;

ALTER TABLE airport_details DROP column weather;
ALTER TABLE employee_details DROP column marital_status;

ALTER TABLE employee_details RENAME COLUMN contact TO phone_number;
ALTER TABLE employee_details RENAME COLUMN citizenship TO nationality;
ALTER TABLE employee_details RENAME COLUMN designation TO job_role;
ALTER TABLE airport_details RENAME COLUMN city TO town;
ALTER TABLE airport_details RENAME COLUMN flight_name TO name_of_flight;

ALTER TABLE employee_details MODIFY COLUMN phone_number int;
ALTER TABLE employee_details MODIFY COLUMN designation int;
ALTER TABLE airport_details MODIFY COLUMN no_of_platforms bigint;
ALTER TABLE airport_details MODIFY COLUMN ticket_price int;
ALTER TABLE airport_details MODIFY COLUMN town int;
use things;
DESC employee_details;
insert into employee_details values(1,'viji',350000,'engineer','vi@gmail',46567,'BE','unmarried','indian',9591529036);
insert into employee_details values(2,'sapna',350000,'engineer','sp@gmail',959156210,'BE','unmarried','indian',8792894093);
insert into employee_details values(3,'sanju',350000,'engineer','sa@gmail',748338242,'BE','unmarried','indian',688987689737);
insert into employee_details values(4,'gagana',350000,'engineer','ga@gmail',75879793,'BE','unmarried','indian',95915209080);
insert into employee_details values(5,'vidya',350000,'engineer','vd@gmail',9876478,'BE','unmarried','indian',95915245345);
insert into employee_details values(6,'renu',350000,'engineer','vd@gmail',656565,'BE','unmarried','indian',9591524534);
insert into employee_details values(7,'harsha',350000,'reception','hs@gmail',646464,'BCA','unmarried','indian',9591524535);
insert into employee_details values(8,'hemanth',350000,'HR','hv@gmail',636363,'ITI','unmarried','indian',9591524536);
insert into employee_details values(9,'kiran',350000,'boss','ki@gmail',626262,'B.com','unmarried','indian',95915245347);
insert into employee_details values(10,'seena',350000,'designer','se@gmail',616161,'diploma','unmarried','indian',95915245347);
insert into employee_details values(11,'ram',350000,'manager','ra@gmail',9876478,'BSc','married','indian',95915245348);

select * from employee_details;
select * from employee_details where id=8;
select  employee_name from employee_details where education='B.com';
select employee_name from employee_details where job_role="Engineer";

CREATE 2 TABLES hospital_info and tourist_places with 10 columns
2)Insert 20 data for each table.

use things;
create table hospital_info(id int,hospital_name varchar(30),hospital_location varchar(30),hospital_contact bigint, street_number int, no_of_doctors int, owner_of_hospital varchar(30),average_salary bigint,head_of_doctors varchar(30),head_nurse varchar(30));
create table tourist_places(id int, place_name varchar(30),location varchar(30),opening_time varchar(30), closing_time varchar(30), contact bigint,entry_fee int, security_guard varchar(30),alternative_contact bigint,manager varchar(30));
DESC tourist_places;
insert into tourist_places values(100,'iscon','navarang','8AM','9PM','9591529036',0,'nagaraj',9591562106,'hemanth');


   

insert into tourist_places values(101, 'Mysore Palace', 'Mysore', '10:00 AM', '5:30 PM', 1234567890, 50, 'Ramesh', 9876543210, 'Mr. Sharma');
insert into tourist_places values(102, 'Hampi', 'Bellary', '6:00 AM', '6:00 PM', 1234567891, 40, 'Suresh', 9876543211, 'Mr. Rao');
insert into tourist_places values(103, 'Coorg', 'Kodagu', '7:00 AM', '7:00 PM', 1234567892, 30, 'Mahesh', 9876543212, 'Ms. Anjali');
insert into tourist_places values(104, 'Jog Falls', 'Shimoga', '9:00 AM', '4:00 PM', 1234567893, 20, 'Rajesh', 9876543213, 'Mr. Kumar');
insert into tourist_places values(105, 'Bannerghatta National Park', 'Bangalore', '9:30 AM', '5:00 PM', 1234567894, 80, 'Sandeep', 9876543214, 'Ms. Meera');
insert into tourist_places values(106, 'Badami Caves', 'Bagalkot', '9:00 AM', '5:00 PM', 1234567895, 25, 'Naveen', 9876543215, 'Mr. Prakash');
insert into tourist_places values(107, 'Nandi Hills', 'Chikkaballapur', '6:00 AM', '6:00 PM', 1234567896, 15, 'Kiran', 9876543216, 'Mr. Harish');
insert into tourist_places values(108, 'Chikmagalur', 'Chikmagalur', '6:00 AM', '6:00 PM', 1234567897, 20, 'Arun', 9876543217, 'Ms. Kavita');
insert into tourist_places values(109, 'Gokarna', 'Uttara Kannada', '6:00 AM', '6:00 PM', 1234567898, 10, 'Vijay', 9876543218, 'Mr. Ashok');
insert into tourist_places values(110, 'Belur', 'Hassan', '9:00 AM', '5:00 PM', 1234567899, 30, 'Yogesh', 9876543219, 'Ms. Preeti');
insert into tourist_places values(111, 'Halebidu', 'Hassan', '9:00 AM', '5:00 PM', 1234567800, 30, 'Suhas', 9876543220, 'Mr. Sanjay');
insert into tourist_places values(112, 'Shravanabelagola', 'Hassan', '6:00 AM', '6:00 PM', 1234567801, 20, 'Anil', 9876543221, 'Ms. Rekha');
insert into tourist_places values(113, 'Kabini', 'Nagarhole', '6:00 AM', '6:00 PM', 1234567802, 50, 'Vishal', 9876543222, 'Mr. Raghav');
insert into tourist_places values(114, 'Udupi', 'Udupi', '6:00 AM', '6:00 PM', 1234567803, 10, 'Dinesh', 9876543223, 'Mr. Krishna');
insert into tourist_places values(115, 'Chitradurga Fort', 'Chitradurga', '9:00 AM', '5:00 PM', 1234567804, 20, 'Vinay', 9876543224, 'Ms. Sudha');
insert into tourist_places values(116, 'Kudremukh', 'Chikmagalur', '6:00 AM', '6:00 PM', 1234567805, 25, 'Mohan', 9876543225, 'Mr. Suresh');
insert into tourist_places values(117, 'Murudeshwar', 'Bhatkal', '6:00 AM', '6:00 PM', 1234567806, 10, 'Ravi', 9876543226, 'Ms. Lata');
insert into tourist_places values(118, 'Sakleshpur', 'Hassan', '6:00 AM', '6:00 PM', 1234567807, 15, 'Anand', 9876543227, 'Mr. Ganesh');


INSERT INTO hospital_info values (10, 'Apollo Hospital', 'Bangalore', 9876543210, 123, 200, 'Dr. Reddy', 120000, 'Dr. Sharma', 'Nurse Rekha');
INSERT INTO hospital_info values (20, 'Fortis Hospital', 'Bangalore', 9876543211, 124, 150, 'Mr. Gupta', 110000, 'Dr. Rao', 'Nurse Meera');
INSERT INTO hospital_info values (30, 'Narayana Health', 'Bangalore', 9876543212, 125, 300, 'Dr. Shetty', 115000, 'Dr. Patil', 'Nurse Lata');
INSERT INTO hospital_info values (40, 'Manipal Hospital', 'Mangalore', 9876543213, 126, 250, 'Mr. Nair', 105000, 'Dr. Ramesh', 'Nurse Anjali');
INSERT INTO hospital_info values (50, 'Columbia Asia', 'Mysore', 9876543214, 127, 180, 'Dr. Mohan', 95000, 'Dr. Singh', 'Nurse Kavita');
INSERT INTO hospital_info values (60, 'Sakra World Hospital', 'Bangalore', 9876543215, 128, 220, 'Mr. Rao', 125000, 'Dr. Iyer', 'Nurse Sunita');
INSERT INTO hospital_info values (70, 'Aster CMI Hospital', 'Bangalore', 9876543216, 129, 200, 'Dr. Ameer', 130000, 'Dr. Kumar', 'Nurse Priya');
INSERT INTO hospital_info values (80, 'BGS Gleneagles Global Hospital', 'Bangalore', 9876543217, 130, 170, 'Mr. Reddy', 100000, 'Dr. Joseph', 'Nurse Sneha');
INSERT INTO hospital_info values (90, 'KMC Hospital', 'Mangalore', 9876543218, 131, 190, 'Dr. Shenoy', 90000, 'Dr. Rao', 'Nurse Pooja');
INSERT INTO hospital_info values (100, 'St. Johns Medical College', 'Bangalore', 9876543219, 132, 210, 'Dr. D\'Souza', 110000, 'Dr. Jacob', 'Nurse Tina');
INSERT INTO hospital_info values (110, 'Vydehi Institute ', 'Bangalore', 9876543220, 133, 160, 'Dr. Bhat', 98000, 'Dr. Pillai', 'Nurse Manju');
INSERT INTO hospital_info values (120, 'MS Ramaiah Memorial Hospital', 'Bangalore', 9876543221, 134, 230, 'Mr. Rao', 115000, 'Dr. Agarwal', 'Nurse Sushma');
INSERT INTO hospital_info values (130, 'Sagar Hospitals', 'Bangalore', 9876543222, 135, 150, 'Dr. Jain', 104000, 'Dr. Kiran', 'Nurse Bhavna');
INSERT INTO hospital_info values (140, 'Sri Sathya Sai Institute of Higher Medical Sciences', 'Bangalore', 9876543223, 136, 190, 'Mr. Prasad', 94000, 'Dr. Naik', 'Nurse Sita');
INSERT INTO hospital_info values (150, 'Brindavan Hospital', 'Mysore', 9876543224, 137, 140, 'Dr. Sharma', 87000, 'Dr. Gowda', 'Nurse Deepa');
INSERT INTO hospital_info values (160, 'Vikram Hospital', 'Bangalore', 9876543225, 138, 175, 'Mr. Gupta', 108000, 'Dr. Reddy', 'Nurse Amrita');
INSERT INTO hospital_info values (170, 'Cloudnine Hospital', 'Bangalore', 9876543226, 139, 125, 'Dr. Kumar', 98000, 'Dr. Pillai', 'Nurse Nisha');
INSERT INTO hospital_info values (180, 'Motherhood Hospital', 'Bangalore', 9876543227, 140, 160, 'Mr. Shetty', 92000, 'Dr. Sharma', 'Nurse Leela');
INSERT INTO hospital_info values (190, 'Spandana Hospital', 'Hubli', 9876543228, 141, 130, 'Dr. Rao', 87000, 'Dr. Patil', 'Nurse Jyothi');
INSERT INTO hospital_info values (200, 'JSS Hospital', 'Mysore', 9876543229, 142, 200, 'Mr. Jain', 113000, 'Dr. Murthy', 'Nurse Shalini');
select * from hospital_info;
select * from tourist_places;

use things;
CREATE 2 TABLES WITH 5 COLUMNS(5 COLUMN WHILE CREATING TABLE).
1)TABLE NAME: movie_info, bank_details
2)5 columns varchar, 2 int, 2 bigint, 1 boolean
3)ADD 5 COLUMNS USING ALTER
4)RENAME 5 COLUMNS USING ALTER
5)INSERT 10 DATA FOR EACH TABLE.
6)UPDATE 10 DATA FOR DIFFERENT COLUMNS.
7)DELETE 3 DATA FOR DIFFERENT COLUMNS.
8)FETCH DATA USING WHERE, AND, OR,IN, NOT IN.
CREATE TABLE movie_info (
    movie_id INT PRIMARY KEY AUTO_INCREMENT, 
    movie_title VARCHAR(255) NOT NULL,        
    genre VARCHAR(100),                       
    film_director VARCHAR(100),               
    language VARCHAR(50),                    
    summary VARCHAR(1000),                    
    year_released INT,                        
    duration_minutes INT,                     
    rating BIGINT,                            
    revenue BIGINT,                           
    is_available BOOLEAN                      
);
ALTER TABLE movie_info
ADD lead_actor VARCHAR(100);

ALTER TABLE movie_info
ADD production_company VARCHAR(100);

ALTER TABLE movie_info
ADD budget BIGINT;

ALTER TABLE movie_info
ADD awards_won INT;

ALTER TABLE movie_info
ADD is_streaming BOOLEAN;

1)CREATE 2 (state_info, scam_info) with 10 columns
2)ADD 5 Columns using alter command.
3)rename 5 columns using alter command.
4)change datatype for 5 columns.
5)Insert 20 data for each table.
6)update 10 data for different columns for each table.
7)delete 3 data from each table.
8)Fetch data using AND OR IN NOT IN 
use things;
CREATE TABLE state_info (
    state_id INT,
    state_name VARCHAR(100),
    capital VARCHAR(100),
    largest_city VARCHAR(100),
    population INT,
    area FLOAT,
    time_zone VARCHAR(50),
    established_date DATE,
    governor VARCHAR(100),
    state_bird VARCHAR(100)
);
ALTER TABLE state_info ADD COLUMN nickname VARCHAR(100);
ALTER TABLE state_info ADD COLUMN state_flower VARCHAR(100);
ALTER TABLE state_info ADD COLUMN state_tree VARCHAR(100);
ALTER TABLE state_info ADD COLUMN state_motto VARCHAR(100);
ALTER TABLE state_info ADD COLUMN admission_to_union DATE;

ALTER TABLE state_info RENAME COLUMN state_name TO state_full_name;
ALTER TABLE state_info RENAME COLUMN largest_city TO major_city;
ALTER TABLE state_info RENAME COLUMN established_date TO statehood_date;
ALTER TABLE state_info RENAME COLUMN governor TO current_governor;
ALTER TABLE state_info RENAME COLUMN state_bird TO official_state_bird;


ALTER TABLE state_info MODIFY COLUMN state_id BIGINT;
ALTER TABLE state_info MODIFY COLUMN population BIGINT;
ALTER TABLE state_info MODIFY COLUMN area DOUBLE PRECISION;
ALTER TABLE state_info MODIFY COLUMN time_zone VARCHAR(100);
ALTER TABLE state_info MODIFY COLUMN admission_to_union varchar(10);

desc state_info

INSERT INTO state_info VALUES (1, 'California', 'Sacramento', 'Los Angeles', 39538223, 163696.32, 'Pacific', '1850-09-09', 'Gavin Newsom', 'California Quail', 'The Golden State', 'California Poppy', 'California Redwood', 'Eureka', '1850-09-09');
INSERT INTO state_info VALUES (2, 'Texas', 'Austin', 'Houston', 29145505, 268596.46, 'Central', '1845-12-29', 'Greg Abbott', 'Mockingbird', 'The Lone Star State', 'Bluebonnet', 'Pecan Tree', 'Friendship', '1845-12-29');
INSERT INTO state_info VALUES (3, 'Florida', 'Tallahassee', 'Jacksonville', 21538187, 65757.70, 'Eastern', '1845-03-03', 'Ron DeSantis', 'Mockingbird', 'The Sunshine State', 'Orange Blossom', 'Sabal Palm', 'In God We Trust', '1845-03-03');
INSERT INTO state_info VALUES (4, 'New York', 'Albany', 'New York City', 20201249, 54555.00, 'Eastern', '1788-07-26', 'Kathy Hochul', 'Eastern Bluebird', 'The Empire State', 'Rose', 'Sugar Maple', 'Excelsior', '1788-07-26');
INSERT INTO state_info VALUES (5, 'Illinois', 'Springfield', 'Chicago', 12812508, 57914.00, 'Central', '1818-12-03', 'J.B. Pritzker', 'Northern Cardinal', 'The Prairie State', 'Violet', 'White Oak', 'State Sovereignty, National Union', '1818-12-03');
INSERT INTO state_info VALUES (6, 'Pennsylvania', 'Harrisburg', 'Philadelphia', 13002700, 46054.00, 'Eastern', '1787-12-12', 'Josh Shapiro', 'Ruffed Grouse', 'The Keystone State', 'Mountain Laurel', 'Eastern Hemlock', 'Virtue, Liberty, and Independence', '1787-12-12');
INSERT INTO state_info VALUES (7, 'Ohio', 'Columbus', 'Columbus', 11799448, 44826.00, 'Eastern', '1803-03-01', 'Mike DeWine', 'Northern Cardinal', 'The Buckeye State', 'Scarlet Carnation', 'Ohio Buckeye', 'With God, All Things Are Possible', '1803-03-01');
INSERT INTO state_info VALUES (8, 'Georgia', 'Atlanta', 'Atlanta', 10711908, 59425.00, 'Eastern', '1788-01-02', 'Brian Kemp', 'Brown Thrasher', 'The Peach State', 'Cherokee Rose', 'Live Oak', 'Wisdom, Justice, and Moderation', '1788-01-02');
INSERT INTO state_info VALUES (9, 'North Carolina', 'Raleigh', 'Charlotte', 10439388, 53819.00, 'Eastern', '1789-11-21', 'Roy Cooper', 'Northern Cardinal', 'The Tar Heel State', 'Dogwood', 'Longleaf Pine', 'Esse Quam Videri', '1789-11-21');
INSERT INTO state_info VALUES (10, 'Michigan', 'Lansing', 'Detroit', 10077331, 96714.00, 'Eastern', '1837-01-26', 'Gretchen Whitmer', 'Robin', 'The Great Lakes State', 'Apple Blossom', 'Eastern White Pine', 'Si Quaeris Peninsulam Amoenam Circumspice', '1837-01-26');
INSERT INTO state_info VALUES (11, 'New Jersey', 'Trenton', 'Newark', 9288994, 8722.58, 'Eastern', '1787-12-18', 'Phil Murphy', 'Eastern Goldfinch', 'The Garden State', 'Violet', 'Northern Red Oak', 'Liberty and Prosperity', '1787-12-18');
INSERT INTO state_info VALUES (12, 'Virginia', 'Richmond', 'Virginia Beach', 8631393, 42774.90, 'Eastern', '1788-06-25', 'Glenn Youngkin', 'Northern Cardinal', 'The Old Dominion', 'American Dogwood', 'American Dogwood', 'Sic Semper Tyrannis', '1788-06-25');
INSERT INTO state_info VALUES (13, 'Washington', 'Olympia', 'Seattle', 7693612, 71298.00, 'Pacific', '1889-11-11', 'Jay Inslee', 'Willow Goldfinch', 'The Evergreen State', 'Rhododendron', 'Western Hemlock', 'Al-ki', '1889-11-11');
INSERT INTO state_info VALUES (14, 'Arizona', 'Phoenix', 'Phoenix', 7151502, 113990.30, 'Mountain', '1912-02-14', 'Katie Hobbs', 'Cactus Wren', 'The Grand Canyon State', 'Saguaro Cactus Blossom', 'Palo Verde', 'Ditat Deus', '1912-02-14');
INSERT INTO state_info VALUES (15, 'Massachusetts', 'Boston', 'Boston', 7029917, 10554.39, 'Eastern', '1788-02-06', 'Maura Healey', 'Black-Capped Chickadee', 'The Bay State', 'Mayflower', 'American Elm', 'Ense Petit Placidam Sub Libertate Quietem', '1788-02-06');
INSERT INTO state_info VALUES (16, 'Tennessee', 'Nashville', 'Nashville', 6910840, 42144.25, 'Central', '1796-06-01', 'Bill Lee', 'Mockingbird', 'The Volunteer State', 'Iris', 'Tulip Poplar', 'Agriculture and Commerce', '1796-06-01');
INSERT INTO state_info VALUES (17, 'Indiana', 'Indianapolis', 'Indianapolis', 6785528, 36420.00, 'Eastern', '1816-12-11', 'Eric Holcomb', 'Northern Cardinal', 'The Hoosier State', 'Peony', 'Tulip Tree', 'The Crossroads of America', '1816-12-11');
INSERT INTO state_info VALUES (18, 'Missouri', 'Jefferson City', 'Kansas City', 6154913, 69707.00, 'Central', '1821-08-10', 'Mike Parson', 'Eastern Bluebird', 'The Show Me State', 'Hawthorn', 'Flowering Dogwood', 'Salus Populi Suprema Lex Esto', '1821-08-10');
INSERT INTO state_info VALUES (19, 'Maryland', 'Annapolis', 'Baltimore', 6177224, 12406.68, 'Eastern', '1788-04-28', 'Wes Moore', 'Baltimore Oriole', 'The Old Line State', 'Black-Eyed Susan', 'White Oak', 'Fatti Maschii, Parole Femine', '1788-04-28');
INSERT INTO state_info VALUES (20, 'Wisconsin', 'Madison', 'Milwaukee', 5893718, 65496.00, 'Central', '1848-05-29', 'Tony Evers', 'American Robin', 'America\'s Dairyland', 'Wood Violet', 'Sugar Maple', 'Forward', '1848-05-29');

UPDATE state_info
SET capital = 'Los Angeles', major_city = 'San Francisco', population = 40000000
WHERE state_id = 1;

UPDATE state_info
SET time_zone = 'Mountain', current_governor = 'Beto O\'Rourke', state_flower = 'Bluebonnet'
WHERE state_id = 2;

UPDATE state_info
SET major_city = 'Orlando', statehood_date = '1845-03-04', official_state_bird = 'Northern Mockingbird'
WHERE state_id = 3;

UPDATE state_info
SET population = 21000000, area = 55000.00, nickname = 'The Empire State'
WHERE state_id = 4;

-- Update row with state_id = 5
UPDATE state_info
SET state_flower = 'Sunflower', state_motto = 'Land of Lincoln', area = 58000.00
WHERE state_id = 5;

UPDATE state_info
SET current_governor = 'Tom Wolf', official_state_bird = 'Pennsylvania Bluebird', time_zone = 'Eastern'
WHERE state_id = 6;

UPDATE state_info
SET major_city = 'Cincinnati', state_flower = 'Scarlet Rose', state_tree = 'Buckeye'
WHERE state_id = 7;

UPDATE state_info
SET population = 10800000, area = 60000.00, capital = 'Atlanta'
WHERE state_id = 8;

UPDATE state_info
SET official_state_bird = 'Cardinal', state_flower = 'Carolina Jessamine', statehood_date = '1789-11-20'
WHERE state_id = 9;

UPDATE state_info
SET state_tree = 'Red Pine', state_flower = 'Daisy', capital = 'Detroit'
WHERE state_id = 10;


DELETE FROM state_info
WHERE state_id = 1;

DELETE FROM state_info
WHERE state_id = 2;

DELETE FROM state_info
WHERE state_id = 3;

SELECT * FROM state_info
WHERE population > 10000000 AND time_zone = 'Central';

SELECT * FROM state_info
WHERE population > 20000000 OR time_zone = 'Pacific';
SELECT * FROM state_info
WHERE state_id IN (4, 5, 6);
SELECT * FROM state_info
WHERE state_id NOT IN (7, 8, 9);

1)CREATE 2 (state_info, scam_info) with 10 columns
2)ADD 5 Columns using alter command.
3)rename 5 columns using alter command.
4)change datatype for 5 columns.
5)Insert 20 data for each table.
6)update 10 data for different columns for each table.
7)delete 3 data from each table.
8)Fetch data using AND OR IN NOT IN 
CREATE TABLE scam_info (
    scam_id BIGINT,
    scam_name VARCHAR(100),
    scam_type VARCHAR(100),
    affected_population BIGINT,
    financial_loss BIGINT,
    region VARCHAR(100),
    reported_date DATE,
    perpetrator VARCHAR(100),
    scam_method VARCHAR(100),
    authority_response VARCHAR(100)
);

ALTER TABLE scam_info ADD COLUMN victim_age_group VARCHAR(100);
ALTER TABLE scam_info ADD COLUMN scam_duration VARCHAR(100);
ALTER TABLE scam_info ADD COLUMN severity_level VARCHAR(100);
ALTER TABLE scam_info ADD COLUMN legal_action_taken VARCHAR(100);
ALTER TABLE scam_info ADD COLUMN detection_date VARCHAR(10);

ALTER TABLE scam_info RENAME COLUMN scam_name TO full_scam_name;
ALTER TABLE scam_info RENAME COLUMN scam_type TO category;
ALTER TABLE scam_info RENAME COLUMN affected_population TO victims_count;
ALTER TABLE scam_info RENAME COLUMN reported_date TO reporting_date;
ALTER TABLE scam_info RENAME COLUMN perpetrator TO suspect;

ALTER TABLE scam_info MODIFY COLUMN financial_loss BIGINT;
ALTER TABLE scam_info MODIFY COLUMN region VARCHAR(150);
ALTER TABLE scam_info MODIFY COLUMN detection_date VARCHAR(10);

INSERT INTO scam_info VALUES 
(1, 'Phishing Scam', 'Email', 50000, 2000000, 'Global', '2021-05-10', 'John Doe', 'Email Phishing', 'Investigation Ongoing', 'All Ages', '1 Month', 'High', 'Yes', '2021-05-15'),
(2, 'Ponzi Scheme', 'Investment', 2000, 10000000, 'USA', '2019-08-20', 'Jane Smith', 'Investment Fraud', 'Arrests Made', 'Adults', '2 Years', 'Severe', 'Yes', '2019-08-25'),
(3, 'Lottery Scam', 'SMS', 30000, 1500000, 'UK', '2020-03-15', 'Tom Brown', 'Text Message', 'Closed', 'Elderly', '2 Weeks', 'Medium', 'Yes', '2020-03-20'),
(4, 'Charity Scam', 'Phone', 10000, 500000, 'Canada', '2021-01-05', 'Lucy Green', 'Phone Call', 'Open', 'All Ages', '1 Year', 'High', 'No', '2021-01-10'),
(5, 'Romance Scam', 'Online', 7000, 2000000, 'Australia', '2020-02-14', 'Mike White', 'Online Dating', 'Under Investigation', 'Adults', '6 Months', 'Severe', 'Yes', '2020-02-20'),
(6, 'Tech Support Scam', 'Phone', 20000, 750000, 'India', '2019-06-30', 'Raj Patel', 'Phone Call', 'Closed', 'Elderly', '3 Months', 'Medium', 'Yes', '2019-07-05'),
(7, 'Investment Scam', 'Email', 5000, 3000000, 'Germany', '2018-09-10', 'Hans Müller', 'Email Phishing', 'Arrests Made', 'Adults', '1 Year', 'Severe', 'Yes', '2018-09-15'),
(8, 'Job Offer Scam', 'Online', 15000, 1000000, 'Nigeria', '2021-07-01', 'Ayo Okeke', 'Fake Job Ads', 'Open', 'All Ages', '2 Months', 'High', 'No', '2021-07-05'),
(9, 'Bank Fraud', 'Email', 10000, 2500000, 'USA', '2020-11-11', 'Sarah Johnson', 'Email Phishing', 'Under Investigation', 'Adults', '6 Months', 'Severe', 'Yes', '2020-11-15'),
(10, 'Online Shopping Scam', 'Online', 30000, 500000, 'UK', '2019-12-01', 'David Clark', 'Fake Websites', 'Closed', 'All Ages', '1 Month', 'Medium', 'Yes', '2019-12-05'),
(11, 'Medical Scam', 'Phone', 5000, 1000000, 'Canada', '2020-04-01', 'Emily Brown', 'Phone Call', 'Under Investigation', 'Elderly', '2 Weeks', 'High', 'Yes', '2020-04-05'),
(12, 'Travel Scam', 'Online', 8000, 1500000, 'USA', '2019-05-15', 'Robert Davis', 'Fake Travel Agencies', 'Arrests Made', 'Adults', '1 Year', 'Severe', 'Yes', '2019-05-20'),
(13, 'Utility Scam', 'Phone', 12000, 750000, 'UK', '2021-06-01', 'James Wilson', 'Phone Call', 'Closed', 'Elderly', '3 Months', 'Medium', 'Yes', '2021-06-05'),
(14, 'Online Auction Scam', 'Online', 10000, 500000, 'Germany', '2018-08-15', 'Maria Schmidt', 'Fake Auctions', 'Under Investigation', 'All Ages', '6 Months', 'High', 'Yes', '2018-08-20'),
(15, 'Loan Scam', 'Email', 7000, 2000000, 'Australia', '2020-10-01', 'Peter Lee', 'Email Phishing', 'Arrests Made', 'Adults', '1 Year', 'Severe', 'Yes', '2020-10-05'),
(16, 'Insurance Scam', 'Phone', 9000, 1500000, 'India', '2019-03-25', 'Anita Kumar', 'Phone Call', 'Closed', 'All Ages', '2 Months', 'Medium', 'Yes', '2019-03-30'),
(17, 'Fake Charity Scam', 'Email', 11000, 500000, 'Canada', '2020-12-25', 'Steven Green', 'Email Phishing', 'Open', 'Adults', '1 Month', 'High', 'No', '2020-12-30'),
(18, 'Inheritance Scam', 'Letter', 6000, 2000000, 'Nigeria', '2019-04-10', 'Chinedu Nwankwo', 'Fake Letters', 'Under Investigation', 'Elderly', '6 Months', 'Severe', 'Yes', '2019-04-15'),
(19, 'Fake Rental Scam', 'Online', 4000, 1000000, 'UK', '2021-08-20', 'Oliver Brown', 'Fake Rental Listings', 'Arrests Made', 'All Ages', '2 Months', 'High', 'Yes', '2021-08-25'),
(20, 'Grandparent Scam', 'Phone', 15000, 500000, 'USA', '2018-07-10', 'Anna Davis', 'Phone Call', 'Closed', 'Elderly', '1 Year', 'Medium', 'Yes', '2018-07-15');

UPDATE scam_info
SET financial_loss = 2500000, authority_response = 'Closed'
WHERE scam_id = 1;

UPDATE scam_info
SET category = 'Crypto Investment', legal_action_taken = 'No'
WHERE scam_id = 2;

DELETE FROM scam_info
WHERE scam_id = 1;
SELECT * FROM scam_info
WHERE victims_count > 1000 AND region = 'USA';

SELECT * FROM scam_info
WHERE financial_loss > 5000000 OR region = 'Global';

SELECT * FROM scam_info
WHERE scam_id IN (2, 3, 4);

SELECT * FROM scam_info
WHERE scam_id NOT IN (5, 6, 7);




CREATE DATABASE Constrains;
USE Constrains;

CREATE TABLE show_room (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL,
    capacity INT,
    open_time TIME,
    close_time TIME,
    phone_number VARCHAR(15) UNIQUE,
    email VARCHAR(100) UNIQUE,
    rating DECIMAL(2, 1) CHECK (rating >= 0 AND rating <= 5),
    manager_id INT
);

CREATE TABLE chat_center (
    id INT PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL,
    message TEXT NOT NULL,
    timestamp TIMESTAMP,
    user_id INT,
    chat_room_id INT,
    is_active BOOLEAN,
    ip_address VARCHAR(45) UNIQUE,
    email VARCHAR(100) UNIQUE,
    message_length INT CHECK (message_length > 0)
);

CREATE TABLE temple_info (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    deity VARCHAR(100) NOT NULL,
    location VARCHAR(100),
    establishment_year INT,
    open_time TIME,
    close_time TIME,
    contact_number VARCHAR(15) UNIQUE,
    email VARCHAR(100) UNIQUE,
    rating DECIMAL(2, 1) CHECK (rating >= 0 AND rating <= 5)
);

CREATE TABLE market_info (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL,
    opening_date DATE,
    open_time TIME,
    close_time TIME,
    number_of_shops INT,
    phone_number VARCHAR(15) UNIQUE,
    email VARCHAR(100) UNIQUE,
    average_rating DECIMAL(2, 1) CHECK (average_rating >= 0 AND average_rating <= 5)
);

CREATE TABLE metro_info (
    id INT PRIMARY KEY,
    station_name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL,
    lines_served INT,
    open_time TIME,
    close_time TIME,
    contact_number VARCHAR(15) UNIQUE,
    email VARCHAR(100) UNIQUE,
    cleanliness_rating DECIMAL(2, 1) CHECK (cleanliness_rating >= 0 AND cleanliness_rating <= 5),
    manager_id INT
);

INSERT INTO show_room VALUES(1, 'puma', 'Bengaluru', 50, '09:00', '18:00', '123-456-7890', 'email1@example.com', 4.5, 101);
INSERT INTO show_room VALUES(2, 'adidas', 'Mangalore', 75, '10:00', '19:00', '123-456-7891', 'email2@example.com', 4.0, 102);
INSERT INTO show_room VALUES(3, 'zara', 'hubli', 60, '08:00', '17:00', '123-456-7892', 'email3@example.com', 4.7, 103);
INSERT INTO show_room VALUES(4, 'max', 'dharwad', 90, '11:00', '20:00', '123-456-7893', 'email4@example.com', 4.2, 104);
INSERT INTO show_room VALUES(5, 'puma', 'delhi', 45, '09:30', '18:30', '123-456-7894', 'email5@example.com', 4.6, 105);
INSERT INTO show_room VALUES(6, 'rio', 'mumbai', 55, '10:30', '19:30', '123-456-7895', 'email6@example.com', 4.3, 106);
INSERT INTO show_room VALUES(7, 'max', 'hyderabad', 70, '08:30', '17:30', '123-456-7896', 'email7@example.com', 4.8, 107);
INSERT INTO show_room VALUES(8, 'Soch', 'bihar', 65, '09:15', '18:15', '123-456-7897', 'email8@example.com', 4.1, 108);
INSERT INTO show_room VALUES(9, 'puma', 'patna', 80, '10:15', '19:15', '123-456-7898', 'email9@example.com', 4.4, 109);
INSERT INTO show_room VALUES(10, 'soch', 'kerala', 85, '11:15', '20:15', '123-456-7899', 'email10@example.com', 4.9, 110);
INSERT INTO show_room VALUES(11, 'gap', 'kochi', 100, '08:00', '17:00', '223-456-7890', 'email11@example.com', 3.9, 111);
INSERT INTO show_room VALUES(12, 'max', 'lucknow', 120, '09:00', '18:00', '223-456-7891', 'email12@example.com', 4.0, 112);
INSERT INTO show_room VALUES(13, 'puma', 'kolkatta', 110, '10:00', '19:00', '223-456-7892', 'email13@example.com', 4.1, 113);
INSERT INTO show_room VALUES(14, 'puma', 'up', 130, '11:00', '20:00', '223-456-7893', 'email14@example.com', 4.2, 114);
INSERT INTO show_room VALUES(15, 'max', 'mp', 95, '08:30', '17:30', '223-456-7894', 'email15@example.com', 4.3, 115);
INSERT INTO show_room VALUES(16, 'biba', 'delhi', 105, '09:30', '18:30', '223-456-7895', 'email16@example.com', 4.4, 116);
INSERT INTO show_room VALUES(17, 'people', 'Ladakh', 115, '10:30', '19:30', '223-456-7896', 'email17@example.com', 4.5, 117);
INSERT INTO show_room VALUES(18, 'gucci', 'kashmir', 125, '11:30', '20:30', '223-456-7897', 'email18@example.com', 4.6, 118);
INSERT INTO show_room VALUES(19, 'prada', 'manali', 135, '08:45', '17:45', '223-456-7898', 'email19@example.com', 4.7, 119);
INSERT INTO show_room VALUES(20, 'max', 'kulu', 140, '09:45', '18:45', '223-456-7899', 'email20@example.com', 4.8, 120);


ALTER TABLE show_room
MODIFY email VARCHAR(100) NOT NULL;
ALTER TABLE show_room
ADD CONSTRAINT check_rating CHECK (rating >= 0 AND rating <= 5);

INSERT INTO chat_center VALUES(1, 'nita', 'Hello!', CURRENT_TIMESTAMP, 201, 301, TRUE, '192.168.1.1', 'user1@example.com', 6);
INSERT INTO chat_center VALUES(2, 'hema', 'Hi there!', CURRENT_TIMESTAMP, 202, 302, TRUE, '192.168.1.2', 'user2@example.com', 8);
INSERT INTO chat_center VALUES(3, 'pooja', 'Good morning!', CURRENT_TIMESTAMP, 203, 303, TRUE, '192.168.1.3', 'user3@example.com', 13);
INSERT INTO chat_center VALUES(4, 'megha', 'Good afternoon!', CURRENT_TIMESTAMP, 204, 304, TRUE, '192.168.1.4', 'user4@example.com', 15);
INSERT INTO chat_center VALUES(5, 'nithya', 'Good evening!', CURRENT_TIMESTAMP, 205, 305, TRUE, '192.168.1.5', 'user5@example.com', 14);
INSERT INTO chat_center VALUES(6, 'kavya', 'How are you?', CURRENT_TIMESTAMP, 206, 306, TRUE, '192.168.1.6', 'user6@example.com', 11);
INSERT INTO chat_center VALUES(7, 'karthik', 'I am fine.', CURRENT_TIMESTAMP, 207, 307, TRUE, '192.168.1.7', 'user7@example.com', 10);
INSERT INTO chat_center VALUES(8, 'nitha', 'What about you?', CURRENT_TIMESTAMP, 208, 308, TRUE, '192.168.1.8', 'user8@example.com', 12);
INSERT INTO chat_center VALUES(9, 'amith', 'I am good too.', CURRENT_TIMESTAMP, 209, 309, TRUE, '192.168.1.9', 'user9@example.com', 13);
INSERT INTO chat_center VALUES(10, 'anil', 'Have a nice day!', CURRENT_TIMESTAMP, 210, 310, TRUE, '192.168.1.10', 'user10@example.com', 14);
INSERT INTO chat_center VALUES(11, 'tarun', 'See you later.', CURRENT_TIMESTAMP, 211, 311, TRUE, '192.168.1.11', 'user11@example.com', 11);
INSERT INTO chat_center VALUES(12, 'varun', 'Take care!', CURRENT_TIMESTAMP, 212, 312, TRUE, '192.168.1.12', 'user12@example.com', 9);
INSERT INTO chat_center VALUES(13, 'sunitha', 'Bye!', CURRENT_TIMESTAMP, 213, 313, TRUE, '192.168.1.13', 'user13@example.com', 8);
INSERT INTO chat_center VALUES(14, 'pushpa', 'Goodbye!', CURRENT_TIMESTAMP, 214, 314, TRUE, '192.168.1.14', 'user14@example.com', 7);
INSERT INTO chat_center VALUES(15, 'keerthi', 'How is it going?', CURRENT_TIMESTAMP, 215, 315, TRUE, '192.168.1.15', 'user15@example.com', 15);
INSERT INTO chat_center VALUES(16, 'shruthi', 'All good here.', CURRENT_TIMESTAMP, 216, 316, TRUE, '192.168.1.16', 'user16@example.com', 14);
INSERT INTO chat_center VALUES(17, 'sneha', 'What’s new?', CURRENT_TIMESTAMP, 217, 317, TRUE, '192.168.1.17', 'user17@example.com', 13);
INSERT INTO chat_center VALUES(18, 'vidya', 'Not much.', CURRENT_TIMESTAMP, 218, 318, TRUE, '192.168.1.18', 'user18@example.com', 12);
INSERT INTO chat_center VALUES(19, 'anagha', 'See you tomorrow.', CURRENT_TIMESTAMP, 219, 319, TRUE, '192.168.1.19', 'user19@example.com', 10);
INSERT INTO chat_center VALUES(20, 'sanju', 'Let’s catch up soon.', CURRENT_TIMESTAMP, 220, 320, TRUE, '192.168.1.20', 'user20@example.com', 9);

ALTER TABLE chat_center
MODIFY message VARCHAR(255) NOT NULL;

ALTER TABLE chat_center
ADD CONSTRAINT check_user_id CHECK (user_id > 0);

INSERT INTO temple_info VALUES(1, 'Sri Venkateswara Temple', 'Deity 1', 'pune', 1990, '06:00', '20:00', '123-456-7890', 'temple1@example.com', 4.7);
INSERT INTO temple_info VALUES(2, 'Akshardham Temple', 'Deity 2', 'delhi', 1985, '05:00', '21:00', '123-456-7891', 'temple2@example.com', 4.5);
INSERT INTO temple_info VALUES(3, 'Meenakshi Temple', 'Deity 3', 'bihar', 2000, '07:00', '19:00', '123-456-7892', 'temple3@example.com', 4.8);
INSERT INTO temple_info VALUES(4, 'Shri Jagannath Temple', 'Deity 4', 'up', 1975, '08:00', '18:00', '123-456-7893', 'temple4@example.com', 4.6);
INSERT INTO temple_info VALUES(5, 'Kashi Vishwanath Temple', 'Deity 5', 'mp', 1960, '06:30', '20:30', '123-456-7894', 'temple5@example.com', 4.9);
INSERT INTO temple_info VALUES(6, 'Brihadeeswarar Temple', 'Deity 6', 'surat', 1950, '07:30', '19:30', '123-456-7895', 'temple6@example.com', 4.4);
INSERT INTO temple_info VALUES(7, 'Somnath Temple', 'Deity 7', 'jaipur', 1980, '08:30', '18:30', '123-456-7896', 'temple7@example.com', 4.5);
INSERT INTO temple_info VALUES(8, 'Kedarnath Temple', 'Deity 8', 'kashmir', 1995, '09:30', '17:30', '123-456-7897', 'temple8@example.com', 4.7);
INSERT INTO temple_info VALUES(9, 'Rameshwaram Temple', 'Deity 9', 'ajmer', 2005, '06:45', '19:45', '123-456-7898', 'temple9@example.com', 4.8);
INSERT INTO temple_info VALUES(10, 'Siddhivinayak Temple', 'Deity 10', 'udaipur', 2010, '07:45', '18:45', '123-456-7899', 'temple10@example.com', 4.6);
INSERT INTO temple_info VALUES(11, 'Lingaraj Temple', 'Deity 11', 'puri', 1992, '08:00', '20:00', '223-456-7890', 'temple11@example.com', 4.5);
INSERT INTO temple_info VALUES(12, 'Tirupati Balaji Temple', 'Deity 12', 'kerala', 1987, '09:00', '21:00', '223-456-7891', 'temple12@example.com', 4.4);
INSERT INTO temple_info VALUES(13, 'Dwarkadhish Temple', 'Deity 13', 'kochi', 2001, '10:00', '19:00', '223-456-7892', 'temple13@example.com', 4.3);
INSERT INTO temple_info VALUES(14, 'Vaishno Devi Temple', 'Deity 14', 'hubli', 1993, '06:00', '18:00', '223-456-7893', 'temple14@example.com', 4.2);
INSERT INTO temple_info VALUES(15, 'Konark Sun Temple', 'Deity 15', 'dharwad', 1983, '07:00', '20:00', '223-456-7894', 'temple15@example.com', 4.1);
INSERT INTO temple_info VALUES(16, 'Golden Temple', 'Deity 16', 'kolar', 1978, '08:00', '21:00', '223-456-7895', 'temple16@example.com', 4.0);
INSERT INTO temple_info VALUES(17, 'Sanchi Stupa', 'Deity 17', 'mysore', 1965, '09:00', '17:00', '223-456-7896', 'temple17@example.com', 3.9);
INSERT INTO temple_info VALUES(18, 'Lotus Temple', 'Deity 18', 'kadur', 1970, '10:00', '18:00', '223-456-7897', 'temple18@example.com', 3.8);
INSERT INTO temple_info VALUES(19, 'Kailasa Temple', 'Deity 19', 'birur', 1988, '06:30', '19:30', '223-456-7898', 'temple19@example.com', 4.7);
INSERT INTO temple_info VALUES(20, 'Mahabodhi Temple', 'Deity 20', 'tarikere', 1996, '07:30', '18:30', '223-456-7899', 'temple20@example.com', 4.6);

ALTER TABLE temple_info
ADD CONSTRAINT unique_email UNIQUE (email);

INSERT INTO market_info VALUES(1, 'Chandni Chowk', 'delhi', '2020-01-01', '08:00', '22:00', 100, '123-456-7890', 'market1@example.com', 4.3);
INSERT INTO market_info VALUES(2, 'Colaba Causeway', 'mumbai', '2019-06-15', '09:00', '21:00', 150, '123-456-7891', 'market2@example.com', 4.1);
INSERT INTO market_info VALUES(3, 'Sarojini Nagar Market', 'delhi', '2018-02-20', '10:00', '20:00', 200, '123-456-7892', 'market3@example.com', 4.5);
INSERT INTO market_info VALUES(4, 'Crawford Market', 'mumbai', '2017-07-10', '11:00', '19:00', 250, '123-456-7893', 'market4@example.com', 4.2);
INSERT INTO market_info VALUES(5, 'Johari Bazaar', 'jaipur', '2016-03-30', '12:00', '18:00', 300, '123-456-7894', 'market5@example.com', 4.4);
INSERT INTO market_info VALUES(6, 'Commercial Street', 'bangalore', '2015-11-25', '08:30', '22:30', 350, '123-456-7895', 'market6@example.com', 4.6);
INSERT INTO market_info VALUES(7, 'Laad Bazaar ', 'hyderabad', '2014-05-05', '09:30', '21:30', 400, '123-456-7896', 'market7@example.com', 4.8);
INSERT INTO market_info VALUES(8, 'New Market ', 'kolkatta', '2013-09-15', '10:30', '20:30', 450, '123-456-7897', 'market8@example.com', 4.7);
INSERT INTO market_info VALUES(9, 'FC Road Market', 'pune', '2012-12-10', '11:30', '19:30', 500, '123-456-7898', 'market9@example.com', 4.5);
INSERT INTO market_info VALUES(10, 'Anjuna Flea Market', 'goa', '2011-08-25', '12:30', '18:30', 550, '123-456-7899', 'market10@example.com', 4.4);
INSERT INTO market_info VALUES(11, 'Connaught Place ', 'delhi', '2010-01-01', '08:00', '22:00', 600, '223-456-7890', 'market11@example.com', 4.3);
INSERT INTO market_info VALUES(12, 'Lajpat Nagar Market ', 'delhi', '2009-06-15', '09:00', '21:00', 650, '223-456-7891', 'market12@example.com', 4.2);
INSERT INTO market_info VALUES(13, 'Zaveri Bazaar ', 'mumbai', '2008-02-20', '10:00', '20:00', 700, '223-456-7892', 'market13@example.com', 4.1);
INSERT INTO market_info VALUES(14, 'Begum Bazaar', 'hyderabad', '2007-07-10', '11:00', '19:00', 750, '223-456-7893', 'market14@example.com', 4.0);
INSERT INTO market_info VALUES(15, 'Janpath Market', 'delhi', '2006-03-30', '12:00', '18:00', 800, '223-456-7894', 'market15@example.com', 3.9);
INSERT INTO market_info VALUES(16, 'Russel Market ', 'bangalore', '2005-11-25', '08:30', '22:30', 850, '223-456-7895', 'market16@example.com', 3.8);
INSERT INTO market_info VALUES(17, 'Fashion Street', 'Mumbai', '2004-05-05', '09:30', '21:30', 900, '223-456-7896', 'market17@example.com', 3.7);
INSERT INTO market_info VALUES(18, 'Palladium Mall ', 'mumbai', '2003-09-15', '10:30', '20:30', 950, '223-456-7897', 'market18@example.com', 3.6);
INSERT INTO market_info VALUES(19, 'T. Nagar', 'chennai', '2002-12-10', '11:30', '19:30', 1000, '223-456-7898', 'market19@example.com', 3.5);
INSERT INTO market_info VALUES(20, 'Manek Chowk', 'Ahmedabad', '2001-08-25', '12:30', '18:30', 1050, '223-456-7899', 'market20@example.com', 3.4);

ALTER TABLE market_info
MODIFY COLUMN email VARCHAR(100) NOT NULL;

ALTER TABLE market_info
ADD CONSTRAINT unique_market_phone UNIQUE (phone);

ALTER TABLE market_info
ADD CONSTRAINT check_rating CHECK (rating >= 0 AND rating <= 5);

ALTER TABLE market_info
ADD CONSTRAINT check_opening_hour CHECK (opening_hour >= '06:00' AND opening_hour <= '22:00');

INSERT INTO metro_info VALUES(1, 'Central Station', 'New York', 3, '05:00', '23:00', '123-456-7890', 'station1@example.com', 4.6, 501);
INSERT INTO metro_info VALUES(2, 'Union Station','Los Angeles', 2, '06:00', '22:00', '123-456-7891', 'station2@example.com', 4.4, 502);
INSERT INTO metro_info VALUES(3, 'Kings Cross','London', 4, '07:00', '21:00', '123-456-7892', 'station3@example.com', 4.8, 503);
INSERT INTO metro_info VALUES(4, 'Shinjuku Station', ' Tokyo', 1, '08:00', '20:00', '123-456-7893', 'station4@example.com', 4.2, 504);
INSERT INTO metro_info VALUES(5, 'Gare du Nord',' Paris', 5, '05:30', '23:30', '123-456-7894', 'station5@example.com', 4.5, 505);
INSERT INTO metro_info VALUES(6, 'Berlin Hauptbahnhof','Berlin', 3, '06:30', '22:30', '123-456-7895', 'station6@example.com', 4.7, 506);
INSERT INTO metro_info VALUES(7, 'Penn Station', 'New York', 2, '07:30', '21:30', '123-456-7896', 'station7@example.com', 4.1, 507);
INSERT INTO metro_info VALUES(8, 'Chhatrapati Shivaji Maharaj Terminus',' Mumbai', 4, '08:30', '20:30', '123-456-7897', 'station8@example.com', 4.9, 508);
INSERT INTO metro_info VALUES(9, 'Sydney Central Station','Sydney', 1, '05:45', '23:45', '123-456-7898', 'station9@example.com', 4.3, 509);
INSERT INTO metro_info VALUES(10, 'Seoul Station','Seoul', 5, '06:45', '22:45', '123-456-7899', 'station10@example.com', 4.6, 510);
INSERT INTO metro_info VALUES(11, 'Roma Termini','Rome', 3, '07:00', '21:00', '223-456-7890', 'station11@example.com', 4.8, 511);
INSERT INTO metro_info VALUES(12, 'São Bento Station','Porto', 2, '08:00', '20:00', '223-456-7891', 'station12@example.com', 4.2, 512);
INSERT INTO metro_info VALUES(13, 'Kyoto Station','Kyoto', 4, '09:00', '19:00', '223-456-7892', 'station13@example.com', 4.5, 513);
INSERT INTO metro_info VALUES(14, 'Beijing Railway Station', 'Beijing', 1, '05:00', '23:00', '223-456-7893', 'station14@example.com', 4.7, 514);
INSERT INTO metro_info VALUES(15, 'Moscow Kazansky Railway Station',' Moscow', 5, '06:00', '22:00', '223-456-7894', 'station15@example.com', 4.9, 515);
INSERT INTO metro_info VALUES(16, 'Grand Central Terminal','New York', 3, '07:00', '21:00', '223-456-7895', 'station16@example.com', 4.4, 516);
INSERT INTO metro_info VALUES(17, 'Amsterdam Centraal','Amsterdam', 2, '08:00', '20:00', '223-456-7896', 'station17@example.com', 4.6, 517);
INSERT INTO metro_info VALUES(18, 'Zurich Hauptbahnhof','Zurich', 4, '05:30', '23:30', '223-456-7897', 'station18@example.com', 4.3, 518);
INSERT INTO metro_info VALUES(19, 'Mumbai Central',' Mumbai', 1, '06:30', '22:30', '223-456-7898', 'station19@example.com', 4.8, 519);
INSERT INTO metro_info VALUES(20, 'Bangkok Railway Station','Bangkok', 5, '07:30', '21:30', '223-456-7899', 'station20@example.com', 4.5, 520);

ALTER TABLE metro_info MODIFY COLUMN lines_served INT NOT NULL;

ALTER TABLE metro_info ADD CONSTRAINT unique_manager_id UNIQUE (manager_id);

ALTER TABLE metro_info ADD CONSTRAINT check_close_time CHECK (close_time >= '20:00');

ALTER TABLE metro_info ADD CONSTRAINT check_lines_served CHECK (lines_served > 0);


CREATE DATABASE RTO;
use RTO;
CREATE TABLE LLR_INFO (
    LLR_ID INT PRIMARY KEY,
    NAME VARCHAR(50),
    DOB DATE,
    ADDRESS VARCHAR(100),
    CONTACT_NUMBER VARCHAR(15),
    EMAIL VARCHAR(50),
    GENDER CHAR(1),
    BLOOD_GROUP VARCHAR(3),
    ISSUE_DATE DATE,
    EXPIRY_DATE DATE
);

CREATE TABLE LLR_TEST_INFO (
    LLR_ID INT,
    TEST_ID INT PRIMARY KEY,
    TEST_DATE DATE,
    RESULT VARCHAR(10),
    SCORE INT,
    REMARKS VARCHAR(100),
    EXAMINER_NAME VARCHAR(50),
    TEST_CENTER VARCHAR(50),
    NEXT_TEST_DATE DATE,
    FOREIGN KEY (LLR_ID) REFERENCES LLR_INFO(LLR_ID)
);

CREATE TABLE DRIVING_LICENCE_INFO (
    DL_ID INT PRIMARY KEY,
    TEST_ID INT,
    LLR_ID INT,
    NAME VARCHAR(50),
    DOB DATE,
    ADDRESS VARCHAR(100),
    CONTACT_NUMBER VARCHAR(15),
    ISSUE_DATE DATE,
    EXPIRY_DATE DATE,
    LICENSE_TYPE VARCHAR(20),
    FOREIGN KEY (TEST_ID) REFERENCES LLR_TEST_INFO(TEST_ID),
    FOREIGN KEY (LLR_ID) REFERENCES LLR_INFO(LLR_ID)
);

CREATE TABLE DRIVING_LICENSE_TEST_INFO (
    DL_ID INT,
    TEST_DATE DATE,
    RESULT VARCHAR(10),
    SCORE INT,
    REMARKS VARCHAR(100),
    EXAMINER_NAME VARCHAR(50),
    TEST_CENTER VARCHAR(50),
    NEXT_TEST_DATE DATE,
    FOREIGN KEY (DL_ID) REFERENCES DRIVING_LICENCE_INFO(DL_ID)
);


INSERT INTO LLR_INFO VALUES(1, 'John Doe', '1985-05-20', '123 Main St, Cityville', '555-1234', 'johndoe@example.com', 'M', 'O+', '2022-01-15', '2025-01-15');
INSERT INTO LLR_INFO VALUES(2, 'Jane Smith', '1990-08-15', '456 Oak St, Townsville', '555-5678', 'janesmith@example.com', 'F', 'A+', '2022-01-20', '2025-01-20');

INSERT INTO LLR_TEST_INFO VALUES(1, 101, '2022-02-10', 'Pass', 85, 'Good performance', 'Examiner A', 'Cityville Center', NULL);
INSERT INTO LLR_TEST_INFO VALUES(2, 102, '2022-02-15', 'Fail', 45, 'Needs improvement', 'Examiner B', 'Townsville Center', '2022-03-15');

INSERT INTO DRIVING_LICENCE_INFO VALUES(1, 101, 1, 'John Doe', '1985-05-20', '123 Main St, Cityville', '555-1234', '2022-03-01', '2032-03-01', 'Car');
INSERT INTO DRIVING_LICENCE_INFO VALUES(2, 102, 2, 'Jane Smith', '1990-08-15', '456 Oak St, Townsville', '555-5678', '2022-04-01', '2032-04-01', 'Motorcycle');

INSERT INTO DRIVING_LICENSE_TEST_INFO VALUES(1, '2022-02-20', 'Pass', 90, 'Excellent', 'Examiner A', 'Cityville Center', NULL);
INSERT INTO DRIVING_LICENSE_TEST_INFO VALUES(2, '2022-04-15', 'Pass', 80, 'Good', 'Examiner B', 'Townsville Center', NULL);


INSERT INTO LLR_INFO VALUES (1, 'John Doe', '1985-05-20', '123 Main St, Cityville', '555-1234', 'johndoe@example.com', 'M', 'O+', '2022-01-15', '2025-01-15')
ON DUPLICATE KEY UPDATE
NAME=VALUES(NAME), DOB=VALUES(DOB), ADDRESS=VALUES(ADDRESS), CONTACT_NUMBER=VALUES(CONTACT_NUMBER), EMAIL=VALUES(EMAIL), GENDER=VALUES(GENDER), BLOOD_GROUP=VALUES(BLOOD_GROUP), ISSUE_DATE=VALUES(ISSUE_DATE), EXPIRY_DATE=VALUES(EXPIRY_DATE);


REPLACE INTO LLR_INFO (LLR_ID, NAME, DOB, ADDRESS, CONTACT_NUMBER, EMAIL, GENDER, BLOOD_GROUP, ISSUE_DATE, EXPIRY_DATE)
VALUES (1, 'John Doe', '1985-05-20', '123 Main St, Cityville', '555-1234', 'johndoe@example.com', 'M', 'O+', '2022-01-15', '2025-01-15');


INSERT INTO DRIVING_LICENSE_TEST_INFO VALUES(11, '2022-03-10', 'Pass', 70, 'Fair', 'Examiner K', 'Villagebottom Center', NULL);
INSERT INTO DRIVING_LICENSE_TEST_INFO VALUES(12, '2022-03-15', 'Fail', 35, 'Needs improvement', 'Examiner L', 'Hamletbottom Center', '2022-04-15');
INSERT INTO DRIVING_LICENSE_TEST_INFO VALUES(13, '2022-03-20', 'Pass', 80, 'Good', 'Examiner M', 'Citycenter Center', NULL);
INSERT INTO DRIVING_LICENSE_TEST_INFO VALUES(14, '2022-03-25', 'Pass', 75, 'Satisfactory', 'Examiner N', 'Towncenter Center', NULL);
INSERT INTO DRIVING_LICENSE_TEST_INFO VALUES(15, '2022-03-30', 'Fail', 45, 'Needs improvement', 'Examiner O', 'Villagecenter Center', '2022-04-30');
INSERT INTO DRIVING_LICENSE_TEST_INFO VALUES(16, '2022-04-01', 'Pass', 85, 'Good', 'Examiner P', 'Hamletcenter Center', NULL);
INSERT INTO DRIVING_LICENSE_TEST_INFO VALUES(17, '2022-04-05', 'Pass', 90, 'Excellent', 'Examiner Q', 'Cityeast Center', NULL);
INSERT INTO DRIVING_LICENSE_TEST_INFO VALUES(18, '2022-04-10', 'Pass', 80, 'Good', 'Examiner R', 'Towneast Center', NULL);
INSERT INTO DRIVING_LICENSE_TEST_INFO VALUES(19, '2022-04-15', 'Fail', 55, 'Needs improvement', 'Examiner S', 'Villageeast Center', '2022-05-15');
INSERT INTO DRIVING_LICENSE_TEST_INFO VALUES(20, '2022-04-20', 'Pass', 88, 'Excellent', 'Examiner T', 'Hamleteast Center', NULL);


