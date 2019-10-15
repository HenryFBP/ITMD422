DROP SCHEMA IF EXISTS `mydb`;
CREATE DATABASE IF NOT EXISTS `mydb`;
USE `mydb`;

CREATE TABLE IF NOT EXISTS `PersonType`
(
    `typeID`   INT PRIMARY KEY NOT NULL,
    `typeName` VARCHAR(100)    NOT NULL
) COMMENT ='
A type of person, i.e. \'Manager\', \'Employee\', \'Intern\'.
';

CREATE TABLE IF NOT EXISTS `LocationType`
(
    `typeID`   INT PRIMARY KEY NOT NULL,
    `typeName` VARCHAR(100)    NOT NULL
) COMMENT ='
A specific location type, i.e. \'Executive Washroom\', \'Lobby\', \'Server Room\'.
';

CREATE TABLE IF NOT EXISTS `Employee`
(
    `employeeID`   INT PRIMARY KEY NOT NULL,
    `lastName`     VARCHAR(100),
    `dateJoined`   DATE,
    `personTypeID` INT,
    FOREIGN KEY (`personTypeID`)
        REFERENCES `PersonType` (`typeID`)
) COMMENT ='
asdf
';

CREATE TABLE IF NOT EXISTS `PersonLocationAccess`
(
    `personTypeID`   INT NOT NULL,
    `locationTypeID` INT NOT NULL,
    FOREIGN KEY (`personTypeID`)
        REFERENCES `PersonType` (`typeID`),
    FOREIGN KEY (`locationTypeID`)
        REFERENCES `LocationType` (`typeID`)
) COMMENT ='
This table links together the type of a person and the type of location they have access to.
The existence of a person\'s ID with a location type in this table means that type of person has access to that type of location.
';

INSERT INTO `PersonType`(typeID, typeName)
VALUES (0, 'Managers'),
       (1, 'Administrative Assistants'),
       (2, 'Information Technology Employees'),
       (3, 'Clerks'),
       (4, 'Collegiate Interns'),
       (5, 'Maintenance Crew'),
       (6, 'Visitors');

INSERT INTO `LocationType`(typeID, typeName)
VALUES (0, 'Executive Lounge'),
       (1, 'Executive Washroom'),
       (2, 'Supply Closet'),
       (3, 'Employee Lounge'),
       (4, 'Server Room');

INSERT INTO `PersonLocationAccess`(personTypeID, locationTypeID)
VALUES (0, 0),
       (0, 1),
       (1, 0),
       (1, 2),
       (1, 3),
       (2, 3),
       (2, 4),
       (3, 2),
       (3, 3),
       (4, 3),
       (5, 0),
       (5, 1),
       (5, 2),
       (5, 3),
       (5, 4),
       (6, 0),
       (6, 1),
       (6, 3);

INSERT INTO `Employee`(employeeID, lastName, dateJoined, personTypeID)
VALUES (101, 'Pappas', DATE('2008-03-08'), 0),
       (102, 'George', DATE('2012-12-21'), 3),
       (103, 'Chang', DATE('2003-05-05'), 2),
       (999, 'Davidson', DATE('2000-08-03'), 6),
       (105, 'Emerson', DATE('2001-07-12'), 3),
       (106, 'Little', DATE('2000-10-15'), 4),
       (107, 'Rodriguez', DATE('2004-03-20'), 2)
;