CREATE TABLE Format1 (
    Format_ID VARCHAR(50) PRIMARY KEY,
    Format_Type VARCHAR(50),
    RPM VARCHAR(10)
);



CREATE TABLE Release1 (
    Release_ID INT IDENTITY(1,1) PRIMARY KEY,
    Format_ID VARCHAR(50),
    Title VARCHAR(255),
    Release_Year INT,
    FOREIGN KEY (Format_ID) REFERENCES Format1(Format_ID)
);

CREATE TABLE Artist1 (
    Artist_ID INT IDENTITY(1,1) PRIMARY KEY,
    Genre VARCHAR(100)
);

CREATE TABLE Artist_Type1 (
    Artist_ID INT PRIMARY KEY,
    Fname VARCHAR(255),
    Lname VARCHAR(255),
    FOREIGN KEY (Artist_ID) REFERENCES Artist1(Artist_ID)
);

CREATE TABLE FullTimeArtist1 (
    Artist_ID INT PRIMARY KEY,
    FOREIGN KEY (Artist_ID) REFERENCES Artist_Type1(Artist_ID)
);

CREATE TABLE PartTimeArtist1 (
    Artist_ID INT PRIMARY KEY,
    FOREIGN KEY (Artist_ID) REFERENCES Artist_Type1(Artist_ID)
);

CREATE TABLE Label1 (
    Label_ID INT IDENTITY(1,1) PRIMARY KEY,
    Country VARCHAR(100),
    Year_Founded INT
);

CREATE TABLE Release_Label1 (
    Release_ID INT,
    Label_ID INT,
    PRIMARY KEY (Release_ID, Label_ID),
    FOREIGN KEY (Release_ID) REFERENCES Release1(Release_ID),
    FOREIGN KEY (Label_ID) REFERENCES Label1(Label_ID)
);

CREATE TABLE Release_Artist1 (
    Release_ID INT,
    Artist_ID INT,
    PRIMARY KEY (Release_ID, Artist_ID),
    FOREIGN KEY (Release_ID) REFERENCES Release1(Release_ID),
    FOREIGN KEY (Artist_ID) REFERENCES Artist1(Artist_ID)
);
