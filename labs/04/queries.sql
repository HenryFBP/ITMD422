USE `mydb`;

/*
 Show the places that each employee is allowed to go to.
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