
CREATE TABLE Alisto.Users
(
    id              INT             not null,
    fname           VARCHAR(20)     not null,
    lname           VARCHAR(20)     not null,
    email           VARCHAR(35)     null,
    username        VARCHAR(35)     not null,
    password        VARCHAR(35)     not null,
    contact_person  INT             null,
    reports_issued  INT             not null,
	PRIMARY KEY (id),
	INDEX fname (fname ASC),
	INDEX lname (lname ASC)
--   contact_no (multivalued. see table Alisto.UserContactNum)
);

CREATE TABLE Alisto.ContactPerson
(
    id              INT             not null,
    fname           VARCHAR(20)     not null,
    lname           VARCHAR(20)     not null,
    email           VARCHAR(35)     null,
	PRIMARY KEY (id)
--   contact_no (multivalued. see table Alisto.UserContactNum)
);

CREATE TABLE Alisto.UserContactNum
(
    user_id         INT             PRIMARY KEY,
    num             VARCHAR(20)     PRIMARY KEY,
);

CREATE TABLE Alisto.Area
(
	id				INT				not null,
	name			VARCHAR(20)		not null,
	coordinate_x    DECIMAL         not null,
    coordinate_y    DECIMAL         not null,
	report_count	INT				not null,
	PRIMARY KEY (id),
	INDEX report_count (report_count DESC),
	INDEX name (name ASC)
);

CREATE TABLE Alisto.Report
(
    id              INT             not null,
	reporter		INT				not null,
    title           VARCHAR(25)     not null,
	area			INT				not null,
    short_desc      TEXT            null,
    classification  INT             not null,
    date_issued     DATETIME        not null,
    full_report     LONGTEXT        null,
	PRIMARY KEY (id),
	INDEX date_issued (date_issued DESC),
	INDEX area (area ASC)
);

CREATE TABLE Alisto.Classifications
(
    id              INT             not null,
    crime_name      VARCHAR(25)     not null,
    syndicate       INT             null,
	PRIMARY KEY (id),
);

CREATE TABLE Alisto.Syndicate
(
    id              INT             not null,
    name            VARCHAR(50)     not null,
    overview        LONGTEXT        null,
	PRIMARY KEY (id),
	INDEX name (name ASC)
--   report_count  (derived)
);
