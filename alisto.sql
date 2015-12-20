-- with scaffold
CREATE TABLE Alisto.Users
(
    id INT UNSIGNED not null AUTO_INCREMENT, -- :primary_key -- in rails, id as primary key is built in
    fname VARCHAR(30) not null, -- :string
    lname VARCHAR(35) not null, -- :string
    email VARCHAR(255) null, -- :string
    username VARCHAR(35) not null, -- :string
    password CHAR(32) NOT NULL,-- md5 hash always gives 32 characters
    contact_person INT null,
    reports_issued INT not null DEFAULT 0,
    PRIMARY KEY (id),
    INDEX fname (fname ASC),
    INDEX lname (lname ASC),
    UNIQUE (username) 
)engine=innodb;
--rails g scaffold User fname:string lname:string email:string username:string reports_issued:integer


--contact_no (multivalued. see table Alisto.UserContactNum)

--with scaffold
CREATE TABLE Alisto.ContactPerson
(
    id INT UNSIGNED not null AUTO_INCREMENT,
    user_id INT UNSIGNED not null,
    fname VARCHAR(30) not null,
    lname VARCHAR(35) not null,
    email VARCHAR(35) null,
    num VARCHAR(20) not null,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id)
    REFERENCES Users(id)
    ON DELETE CASCADE
)engine=innodb;
-- contact_no (multivalued. see table Alisto.UserContactNum)


CREATE TABLE Alisto.UserContactNum
(
    user_id INT UNSIGNED not null AUTO_INCREMENT,
    num VARCHAR(20),
    PRIMARY KEY (user_id, num),
    FOREIGN KEY (user_id)
    REFERENCES Users(id)
    ON DELETE CASCADE
)engine=innodb;

CREATE TABLE Alisto.Area
(
    id INT UNSIGNED not null AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    min_x DECIMAL(11,8) NOT NULL, 
    min_y DECIMAL(10,8) NOT NULL,
    max_x DECIMAL(11,8) NOT NULL, 
    max_y DECIMAL(10,8) NOT NULL,
    report_count INT not null,
    PRIMARY KEY (id),
    INDEX report_count (report_count DESC),
    INDEX name (name ASC)
)engine=innodb;

--Method 2: Specialization/Generalization.
-- There are two types of report a.) Anonymous-Tip and b.) Report with Follow Up
CREATE TABLE Alisto.AnonReport
(
    id INT UNSIGNED not null AUTO_INCREMENT,
    title VARCHAR(25) not null,
    area INT not null,
    short_desc TEXT null,
    classification INT not null,
    date_issued DATETIME not null,
    full_report LONGTEXT null,
    PRIMARY KEY (id),
    INDEX date_issued (date_issued DESC),
    INDEX area (area ASC)
)engine=innodb;

CREATE TABLE Alisto.Report
(
    id INT UNSIGNED not null AUTO_INCREMENT,
    reporter INT not null,
    title VARCHAR(25) not null,
    area INT not null,
    coordinate_x DECIMAL(11,8) NOT NULL, 
    coordinate_y DECIMAL(10,8) NOT NULL,
    short_desc TEXT null,
    classification INT not null,
    date_issued DATETIME not null,
    full_report LONGTEXT null,
    PRIMARY KEY (id),
    INDEX date_issued (date_issued DESC),
    INDEX area (area ASC)
)engine=innodb;


CREATE TABLE Alisto.Syndicates
(
    id INT UNSIGNED not null AUTO_INCREMENT,
    name VARCHAR(50) not null,
    overview LONGTEXT null,
    PRIMARY KEY (id),
    INDEX name (name ASC)
--   report_count  (derived)
)engine=innodb;

CREATE TABLE Alisto.Classifications
(
    id INT UNSIGNED not null AUTO_INCREMENT,
    crime_name VARCHAR(25) not null,
    crime_details LONGTEXT not null,
    PRIMARY KEY (id),
)engine=innodb;

-- many is to one
-- many classification is to one syndicate
-- partial participation since not all classifications are attributed to a syndicate
-- If PARTIAL participation on the “many” side, you may create a separate schema to avoid NULL values.
CREATE TABLE Alisto.ClassificationsToSyndicate
(
    id INT UNSIGNED not null AUTO_INCREMENT,
    classification_id INT UNSIGNED not null,
    syndicate_id INT UNSIGNED not null,
    PRIMARY KEY (id),
    FOREIGN KEY (classification_id) REFERENCES Classifications(id),
    FOREIGN KEY (syndicate_id) REFERENCES Syndicates(id)
)engine=innodb;

-- contact_no (multivalued. see table Alisto.UserContactNum)
delimiter //
CREATE TRIGGER user_before_insert BEFORE INSERT ON Users
FOR EACH ROW
BEGIN
    SET NEW.password = md5(NEW.password);
END;
//
CREATE TRIGGER user_before_update BEFORE UPDATE ON Users
FOR EACH ROW
BEGIN
    SET NEW.password = md5(NEW.password);
END;
//
delimiter ;