CREATE DATABASE admindetails;

USE admindetails;

CREATE TABLE admin (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO admin (email, name, password) VALUES 
('vijayalakshmigs038@gmail.com', 'Vijayalakshmi G S', 'Vijayalakshmi@38'),
('sapnazbanu21@gmail.com', 'Sapnaz', 'Sapnaz@21'),
('vijayalakshmishreeram8@gmail.com', 'Shreeram', 'Shreeram@3'),
('shashanklr9@gmail.com', 'Shashank L R', 'Shashank@78');


select * from admin;

UPDATE admin
SET Password = 'Vijayalakshmi@38' where email = 'vijayalakshmigs038@gmail.com';
UPDATE admin
SET Password = 'Sapnaz@21' where email = 'sapnazbanu21@gmail.com';
UPDATE admin
SET Password = 'Shreeram@3' where email = 'vijayalakshmishreeram8@gmail.com';
UPDATE admin
SET Password = 'Shashank@78' where email = 'shashanklr9@gmail.com';


UPDATE admin
SET Logincount = -1
WHERE email IN ('vijayalakshmigs038@gmail.com', 'sapnazbanu21@gmail.com', 'vijayalakshmishreeram8@gmail.com','shashanklr9@gmail.com');

USE admindetails;

CREATE TABLE enquires (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Area VARCHAR(255) NOT NULL,
    PhoneNumber BIGINT NOT NULL,
    Distance DOUBLE NOT NULL,
    Age INT NOT NULL,
    EnquiredBy VARCHAR(255) NOT NULL,
    EnquiredDate datetime,
    Status VARCHAR(255) NOT NULL,
    Reason VARCHAR(255) NOT NULL,
    Followedupdate date );


USE admindetails;

CREATE TABLE registration (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Package VARCHAR(255) NOT NULL,
    Trainer VARCHAR(255) NOT NULL,
    PhoneNumber VARCHAR(255) NOT NULL,
    Amount DOUBLE NOT NULL,
    Discount DOUBLE ,
    GymName VARCHAR(255) NOT NULL,
    Balance DOUBLE NOT NULL,
    Installment DOUBLE NOT NULL,
    RegisteredDate DATE);
    ALTER TABLE registration
    ADD COLUMN ImageFilePath VARCHAR(255);
        ALTER TABLE registration

ADD COLUMN Age VARCHAR(255),
ADD COLUMN Gender VARCHAR(255),
ADD COLUMN DOB VARCHAR(255),
ADD COLUMN EmergencyContactName VARCHAR(255),
ADD COLUMN EmergencyContactNumber VARCHAR(255),
ADD COLUMN CurrentHeight VARCHAR(255),
ADD COLUMN CurrentWeight VARCHAR(255);
   
DELIMITER //

CREATE TRIGGER after_registration_insert
 AFTER INSERT ON registration
 FOR EACH ROW
 BEGIN
     UPDATE enquires
     SET Status = 'Registered', Reason = 'Person registered through registration '
     WHERE Email = NEW.Email;
 END; 

DELIMITER ;
DELIMITER $$

CREATE TRIGGER after_registration_insert
AFTER INSERT ON registration
FOR EACH ROW
BEGIN
    UPDATE enquires
    SET Status = 'Registered', 
        Reason = 'Person registered through registration'
    WHERE Email = NEW.Email;
END $$

DELIMITER ;



CREATE TABLE enquiryupdatetrackdetails (
    id_up INT AUTO_INCREMENT PRIMARY KEY,
    Status VARCHAR(255) NOT NULL,
    Reason VARCHAR(255) NOT NULL,
    Followedupdate date,
    id INT NOT NULL,
    FOREIGN KEY (id) REFERENCES enquires(id)
);

USE admindetails;

CREATE TABLE registrationupdatetrackdetails (
    id_up INT AUTO_INCREMENT PRIMARY KEY,
    Package VARCHAR(255) NOT NULL,
    Trainer  VARCHAR(255) NOT NULL,
    Amount double,
    AmountPaid double,
    Balance double,
    FOREIGN KEY (id) REFERENCES registration(id)
);
CREATE TABLE registrationupdatetrackdetails (
    id_up INT AUTO_INCREMENT PRIMARY KEY,
    id INT NOT NULL,
    Package VARCHAR(255) NOT NULL,
    Trainer VARCHAR(255) NOT NULL,
    Amount DOUBLE,
    AmountPaid DOUBLE,
    Balance DOUBLE,
    FOREIGN KEY (id) REFERENCES registration(id) 
);