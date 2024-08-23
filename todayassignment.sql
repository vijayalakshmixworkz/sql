create database viji;
use viji;
CREATE TABLE Authors (
    AuthorID BIGINT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    BirthDate DATE,
    Nationality VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Biography TEXT,
    DebutYear INT,
    LiteraryGenre VARCHAR(100)
);
INSERT INTO Authors VALUES (3, 'Ananya', 'Singh', '1982-04-18', 'Indian', 'ananya.singh@example.com', '7777777777', 'Renowned poet with multiple awards.', 2008, 'Poetry');
INSERT INTO Authors VALUES(4, 'Rahul', 'Patel', '1978-11-02', 'Indian', 'rahul.patel@example.com', '6666666666', 'Historical fiction writer with a focus on ancient India.', 2003, 'Historical Fiction');
INSERT INTO Authors VALUES(5, 'Sneha', 'Rao', '1985-09-30', 'Indian', 'sneha.rao@example.com', '5555555555', 'Author of popular science books and educational content.', 2010, 'Science');
INSERT INTO Authors VALUES(6, 'Kabir', 'Desai', '1990-02-14', 'Indian', 'kabir.desai@example.com', '4444444444', 'Young adult fiction author with a cult following.', 2015, 'Young Adult Fiction');
INSERT INTO Authors VALUES(7, 'Pooja', 'Mehta', '1972-06-25', 'Indian', 'pooja.mehta@example.com', '3333333333', 'Writer of contemporary drama and short stories.', 1998, 'Drama');
INSERT INTO Authors VALUES(8, 'Arjun', 'Bhatia', '1987-12-12', 'Indian', 'arjun.bhatia@example.com', '2222222222', 'Thriller novelist with a knack for plot twists.', 2011, 'Thriller');
INSERT INTO Authors VALUES(9, 'Divya', 'Nair', '1993-05-07', 'Indian', 'divya.nair@example.com', '1111111111', 'Upcoming author of speculative fiction.', 2018, 'Speculative Fiction');
INSERT INTO Authors VALUES(10, 'Rohan', 'Jain', '1989-03-21', 'Indian', 'rohan.jain@example.com', '0000000000', 'Expert in non-fiction, writing about technology and society.', 2012, 'Non-Fiction');
INSERT INTO Authors VALUES(11, 'Meera', 'Khanna', '1976-08-30', 'Indian', 'meera.khanna@example.com', '9998887777', 'Author of several popular self-help books.', 2001, 'Self-Help');
INSERT INTO Authors VALUES(12, 'Nisha', 'Aggarwal', '1984-12-05', 'Indian', 'nisha.aggarwal@example.com', '8887776666', 'Romantic suspense novelist with a large fanbase.', 2009, 'Romantic Suspense');
INSERT INTO Authors VALUES(13, 'Gaurav', 'Shah', '1991-07-22', 'Indian', 'gaurav.shah@example.com', '7776665555', 'Writer of humorous fiction and satire.', 2014, 'Humor');
CREATE TABLE Books (
    BookID BIGINT PRIMARY KEY,
    Title VARCHAR(255),
    PublicationDate DATE,
    ISBN VARCHAR(20),
    Pages INT,
    AuthorID BIGINT,
    GenreID BIGINT,
    PublisherID BIGINT,
    Language VARCHAR(50),
    Price DECIMAL(10, 2),
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID),
    FOREIGN KEY (PublisherID) REFERENCES Publishers(PublisherID)
);
INSERT INTO Books VALUES (1, 'The Lost City', '2020-05-20', '978-3-16-148410-0', 350, 1, 1, 1, 'English', 19.99);
INSERT INTO Books VALUES(2, 'Heart’s Desire', '2021-08-15', '978-1-234-56789-7', 280, 2, 2, 2, 'English', 15.99);
INSERT INTO Books VALUES(3, 'Whispers of the Wind', '2019-03-10', '978-0-123-45678-9', 320, 3, 3, 1, 'English', 17.50);
INSERT INTO Books VALUES(4, 'Echoes of the Past', '2018-11-25', '978-3-16-148400-1', 410, 4, 1, 2, 'English', 22.00);
INSERT INTO Books VALUES(5, 'The Quantum Realm', '2022-07-30', '978-1-234-56788-0', 290, 5, 4, 3, 'English', 20.00);
INSERT INTO Books VALUES(6, 'Into the Unknown', '2017-09-05', '978-0-987-65432-1', 260, 6, 5, 4, 'English', 14.99);
INSERT INTO Books VALUES(7, 'Beneath the Surface', '2023-01-12', '978-1-234-56787-3', 340, 7, 2, 5, 'English', 18.50);
INSERT INTO Books VALUES(8, 'The Silent Observer', '2016-06-18', '978-3-16-148399-8', 310, 8, 3, 6, 'English', 21.75);
INSERT INTO Books VALUES(9, 'Rise of the Phoenix', '2020-10-22', '978-1-234-56786-6', 380, 9, 4, 7, 'English', 23.99);
INSERT INTO Books VALUES(10, 'Shadows of the Moon', '2019-04-14', '978-0-987-65431-4', 330, 10, 5, 8, 'English', 16.50);


CREATE TABLE Genres (
    GenreID BIGINT PRIMARY KEY,
    GenreName VARCHAR(100),
    Description TEXT,
    ParentGenreID BIGINT,
    PopularityScore INT,
    ExampleWorks TEXT,
    FirstAppeared DATE,
    ForeignKeyFromAuthorID BIGINT,
    FOREIGN KEY (ParentGenreID) REFERENCES Genres(GenreID),
    FOREIGN KEY (ForeignKeyFromAuthorID) REFERENCES Authors(AuthorID)
);
INSERT INTO Genres VALUES (1, 'Mystery', 'Genre focusing on solving a crime or unraveling secrets.', NULL, 85, 'Sherlock Holmes, The Da Vinci Code', '1890-01-01', 1);
INSERT INTO Genres VALUES(2, 'Romance', 'Genre focused on romantic relationships.', NULL, 90, 'Pride and Prejudice, The Notebook', '1813-01-28', 2);
INSERT INTO Genres VALUES(3, 'Science Fiction', 'Genre dealing with imaginative and futuristic concepts.', NULL, 80, 'Dune, The War of the Worlds', '1920-06-01', 3);
INSERT INTO Genres VALUES(4, 'Fantasy', 'Genre involving magic, mythical beings, and imaginary worlds.', NULL, 88, 'The Lord of the Rings, Harry Potter', '1954-07-29', 4);
INSERT INTO Genres VALUES(5, 'Historical Fiction', 'Genre set in a past time period, often featuring real events.', NULL, 75, 'The Book Thief, All the Light We Cannot See', '1939-09-01', 5);
INSERT INTO Genres VALUES(6, 'Thriller', 'Genre characterized by suspense, tension, and excitement.', NULL, 82, 'The Girl with the Dragon Tattoo, Gone Girl', '1965-05-15', 6);
INSERT INTO Genres VALUES(7, 'Young Adult Fiction', 'Genre targeted at teenage readers, often featuring coming-of-age stories.', NULL, 78, 'The Hunger Games, Twilight', '2005-10-05', 7);
INSERT INTO Genres VALUES(8, 'Poetry', 'Genre expressing ideas and emotions through verse and rhythm.', NULL, 92, 'The Raven, Leaves of Grass', '1845-01-01', 8);
INSERT INTO Genres VALUES(9, 'Non-Fiction', 'Genre based on factual information and real events.', NULL, 87, 'Sapiens, The Immortal Life of Henrietta Lacks', '2001-02-10', 9);
INSERT INTO Genres VALUES(10, 'Humor', 'Genre intended to amuse and entertain, often through satire.', NULL, 77, 'Catch-22, Good Omens', '1961-11-10', 10);


CREATE TABLE Publishers (
    PublisherID BIGINT PRIMARY KEY,
    PublisherName VARCHAR(255),
    EstablishedYear INT,
    HeadquartersLocation VARCHAR(255),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15),
    CEOName VARCHAR(100),
    AnnualRevenue DECIMAL(15, 2),
    MarketShare DECIMAL(5, 2),
    PublishedBooks INT
);
INSERT INTO Publishers VALUES (1, 'Penguin Random House', 1925, 'New York, USA', 'contact@penguinrandomhouse.com', '7777777777', 'John Doe', 3000000000.00, 20.5, 10000);
INSERT INTO Publishers VALUES(2, 'HarperCollins', 1817, 'New York, USA', 'contact@harpercollins.com', '6666666666', 'Jane Doe', 2000000000.00, 15.0, 8000);
INSERT INTO Publishers VALUES(3, 'Simon & Schuster', 1924, 'New York, USA', 'contact@simonandschuster.com', '5555555555', 'Richard Roe', 1500000000.00, 12.0, 6000);
INSERT INTO Publishers VALUES(4, 'Hachette Book Group', 1837, 'Paris, France', 'contact@hachettebookgroup.com', '4444444444', 'Pierre Dupont', 1800000000.00, 13.5, 7000);
INSERT INTO Publishers VALUES(5, 'Macmillan Publishers', 1843, 'London, UK', 'contact@macmillan.com', '3333333333', 'Emily Clarke', 1400000000.00, 10.0, 6500);
INSERT INTO Publishers VALUES(6, 'Scholastic', 1920, 'New York, USA', 'contact@scholastic.com', '2222222222', 'David Smith', 1200000000.00, 8.5, 5000);
INSERT INTO Publishers VALUES(7, 'Bloomsbury Publishing', 1986, 'London, UK', 'contact@bloomsbury.com', '1111111111', 'Sarah Brown', 1000000000.00, 7.5, 4500);
INSERT INTO Publishers VALUES(8, 'Oxford University Press', 1586, 'Oxford, UK', 'contact@oup.com', '0000000000', 'Michael Johnson', 900000000.00, 6.0, 4000);
INSERT INTO Publishers VALUES(9, 'Cambridge University Press', 1534, 'Cambridge, UK', 'contact@cambridge.org', '9998887777', 'Laura Wilson', 850000000.00, 5.5, 3500);
INSERT INTO Publishers VALUES(10, 'Wiley', 1807, 'Hoboken, USA', 'contact@wiley.com', '8887776666', 'Mark Davis', 1100000000.00, 7.0, 5500);



ALTER TABLE Books DROP FOREIGN KEY Books_ibfk_1;
ALTER TABLE Books DROP FOREIGN KEY Books_ibfk_2;
ALTER TABLE Books DROP FOREIGN KEY Books_ibfk_3;

ALTER TABLE Genres DROP FOREIGN KEY Genres_ibfk_1;
ALTER TABLE Genres DROP FOREIGN KEY Genres_ibfk_2;

ALTER TABLE Publishers DROP FOREIGN KEY Publishers_ibfk_1;
