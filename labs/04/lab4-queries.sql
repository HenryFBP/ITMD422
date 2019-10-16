USE `mydb`;

/*
 Show the places that each employee is allowed to go to.
 Not for homework, just for my own tests.
 */
SELECT Employee.employeeID,
       Employee.lastName,
       PT.typeName as personTypeName,
       LT.typeName as locationTypeAllowed
FROM Employee
         JOIN PersonLocationAccess PLA on Employee.personTypeID = PLA.personTypeID
         JOIN PersonType PT on Employee.personTypeID = PT.typeID
         JOIN LocationType LT on PLA.locationTypeID = LT.typeID
;

/*
 Perform a query that lists all employees that do not have access to the server room.
 */
-- TODO


/*
 Construct a query that lists all employees that have access to the supply closet or the executive lounge.
 */
SELECT DISTINCT personTypeID
FROM PersonLocationAccess
WHERE ((locationTypeID = (select typeID from LocationType where typeName LIKE 'Executive Lounge'))
    OR (locationTypeID = (select typeID from LocationType where typeName LIKE 'Supply Closet')));

/*
 Determine the count of all the employees that are of the intern type.
 */
SELECT *
FROM Employee
WHERE personTypeID =
      (SELECT typeID
       from PersonType
       where typeName = 'Collegiate Interns'
      );

/*
 List all employees that have an " L " or an " N " as the first letter in their last name.
 */
SELECT *
FROM Employee
WHERE UPPER(Employee.lastName) REGEXP '^[LN]'

/*
 Design a database report that shows the distribution of the employees according to employee class.
 You can use a pie chart or other graphic image to show the distribution.
 */
-- TODO