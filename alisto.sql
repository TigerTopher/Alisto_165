/* NOTE: Text file lang muna for documentation purposes.
        85% yun, GC ako.
*/

CREATE TABLE Alisto.Users
(
    id              INT             PRIMARY KEY,
    fname           VARCHAR(20)     not null,
    lname           VARCHAR(20)     not null,
    email           VARCHAR(35)     null,
    username        VARCHAR(35)     not null,
    password        VARCHAR(35)     not null,
    contact_person  INT             null,
    reports_issued  INT             not null
--   contact_no (multivalued. see table Alisto.UserContactNum)
);

CREATE TABLE Alisto.ContactPerson
(
    id              INT             PRIMARY KEY,
    fname           VARCHAR(20)     not null,
    lname           VARCHAR(20)     not null,
    email           VARCHAR(35)     null
--   contact_no (multivalued. see table Alisto.UserContactNum)
);

CREATE TABLE Alisto.UserContactNum
(
    user_id         INT             PRIMARY KEY,
    number          VARCHAR(20)     PRIMARY KEY
);

CREATE TABLE Alisto.Report
(
    id              INT             PRIMARY KEY,
    title           VARCHAR(25)     not null,
    count           INT             not null,
    coordinate_x    DECIMAL         not null,
    coordinate_y    DECIMAL         not null,
    short_desc      TEXT            null,
    classification  INT             not null,
    date_issued     DATETIME        not null,
    full_report     LONGTEXT        null
);

CREATE TABLE Alisto.Classifications
(
    id              INT             PRIMARY KEY,
    crime_name      VARCHAR(25)     not null,
    syndicate       INT             null
);

CREATE TABLE Alisto.Syndicate
(
    id              INT             PRIMARY KEY,
    name            VARCHAR(50)     not null,
    overview        LONGTEXT        null
--   report_count  (derived)
);
