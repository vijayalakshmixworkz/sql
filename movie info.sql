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
1)ADD 5 NEW COLUMNS USING ALTER.
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
DROP TABLE movie_info;
CREATE TABLE movie_info (
    movie_id INT , 
    movie_title VARCHAR(255) ,        
    genre VARCHAR(100),                       
    film_director VARCHAR(100),               
    movie_language VARCHAR(50),                    
    summary VARCHAR(1000),                    
    year_released INT,                        
    duration_minutes INT,                     
    rating BIGINT,                            
    revenue BIGINT,                           
    is_available BOOLEAN                      
);
ALTER TABLE movie_info ADD lead_actor VARCHAR(100);
ALTER TABLE movie_info ADD production_company VARCHAR(100);
ALTER TABLE movie_info ADD budget BIGINT;
ALTER TABLE movie_info ADD awards_won INT;
ALTER TABLE movie_info ADD is_streaming BOOLEAN;

ALTER TABLE movie_info RENAME COLUMN movie_title TO title;
ALTER TABLE movie_info RENAME COLUMN film_director TO director;
ALTER TABLE movie_info RENAME COLUMN year_released TO release_year;
ALTER TABLE movie_info RENAME COLUMN duration_minutes TO length_minutes;
ALTER TABLE movie_info RENAME COLUMN revenue TO box_office;

INSERT INTO movie_info  VALUES (1, 'The Matrix', 'Sci-Fi', 'Lana Wachowski, Lilly Wachowski', 'English', 'A computer hacker learns about the true nature of reality and his role in the war against its controllers.', 1999, 136, 8, 465000000, TRUE, 'Keanu Reeves', 'Warner Bros.', 63000000, 4, TRUE);
INSERT INTO movie_info VALUES (2, 'Inception', 'Sci-Fi', 'Christopher Nolan', 'English', 'A thief who steals corporate secrets through dream-sharing technology is given the inverse task of planting an idea.', 2010, 148, 9, 830000000, TRUE, 'Leonardo DiCaprio', 'Warner Bros.', 160000000, 8, TRUE);
INSERT INTO movie_info VALUES (3, 'Interstellar', 'Sci-Fi', 'Christopher Nolan', 'English', 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.', 2014, 169, 9, 677000000, TRUE, 'Matthew McConaughey', 'Paramount Pictures', 165000000, 6, TRUE);
INSERT INTO movie_info VALUES (4, 'The Godfather', 'Crime', 'Francis Ford Coppola', 'English', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 1972, 175, 9, 246120974, TRUE, 'Marlon Brando', 'Paramount Pictures', 6000000, 29, TRUE);
INSERT INTO movie_info VALUES (5, 'Pulp Fiction', 'Crime', 'Quentin Tarantino', 'English', 'The lives of two mob hitmen, a boxer, a gangster, and his wife intertwine in four tales of violence and redemption.', 1994, 154, 9, 213928762, TRUE, 'John Travolta', 'Miramax', 8000000, 7, TRUE);
INSERT INTO movie_info VALUES (6, 'The Shawshank Redemption', 'Drama', 'Frank Darabont', 'English', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 1994, 142, 9, 28341469, TRUE, 'Tim Robbins', 'Castle Rock Entertainment', 25000000, 7, TRUE);
INSERT INTO movie_info VALUES (7, 'The Dark Knight', 'Action', 'Christopher Nolan', 'English',  'When the menace known as the Joker emerges, he plunges Gotham into anarchy, forcing Batman closer to crossing the line between hero and vigilante.', 2008, 152, 9, 1004558444, TRUE, 'Christian Bale', 'Warner Bros.', 185000000, 2, TRUE);
INSERT INTO movie_info VALUES (8, 'Forrest Gump', 'Drama', 'Robert Zemeckis', 'English',  'The presidencies of Kennedy and Johnson, Vietnam, Watergate, and other history unfold through the perspective of an Alabama man.',  1994, 142, 8, 678200000, TRUE, 'Tom Hanks', 'Paramount Pictures', 55000000, 6, TRUE);
INSERT INTO movie_info VALUES (9, 'Fight Club', 'Drama', 'David Fincher', 'English',  'An insomniac office worker and a soap salesman form an underground fight club that evolves into something much more.',  1999, 139, 8, 101209702, TRUE, 'Brad Pitt', '20th Century Fox', 63000000, 1, TRUE);
INSERT INTO movie_info VALUES (10, 'Gladiator', 'Action', 'Ridley Scott', 'English',  'A former Roman general sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.', 2000, 155, 8, 460583960, TRUE, 'Russell Crowe', 'DreamWorks', 103000000, 5, TRUE);

UPDATE movie_info SET genre = 'Action', rating = 9 WHERE movie_id = 1;
UPDATE movie_info SET summary = 'A skilled thief is given a chance to have his criminal history erased if he can successfully perform an inception.', is_available = FALSE
WHERE movie_id = 2;
UPDATE movie_info SET lead_actor = 'Anne Hathaway', budget = 170000000 WHERE movie_id = 3;
UPDATE movie_info SET production_company = 'New Paramount', awards_won = 30 WHERE movie_id = 4;
UPDATE movie_info SET length_minutes = 160, is_streaming = FALSE WHERE movie_id = 5;
UPDATE movie_info SET release_year = 1995, box_office = 30000000 WHERE movie_id = 6;
UPDATE movie_info SET movie_language = 'Spanish', budget = 200000000 WHERE movie_id = 7;
UPDATE movie_info SET title = 'Forrest Gump: The New Edition', lead_actor = 'Tom Hanks' WHERE movie_id = 8;
UPDATE movie_info SET genre = 'Thriller', production_company = 'New Fox'WHERE movie_id = 9;
UPDATE movie_info SET rating = 9, is_available = FALSE WHERE movie_id = 10;
UPDATE movie_info SET awards_won = 10, is_streaming = TRUE WHERE movie_id = 11;

DELETE FROM movie_info WHERE movie_id = 1;
DELETE FROM movie_info WHERE movie_id = 4;
DELETE FROM movie_info WHERE movie_id = 7;

SELECT * FROM movie_info WHERE release_year > 2010;
SELECT * FROM movie_info WHERE rating = 9 AND is_streaming = TRUE;
SELECT * FROM movie_info WHERE genre = 'Sci-Fi' OR rating = 10;
SELECT * FROM movie_info WHERE movie_id IN (2, 5, 8);
SELECT * FROM movie_info WHERE movie_id NOT IN (1, 3, 7);





