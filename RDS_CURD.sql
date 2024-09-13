-- Create a new database named 'shiv_db'
CREATE DATABASE shiv_db;

-- Switch to the 'shiv_db' database to start using it
USE shiv_db;

-- Create a table named 'Employees' with four columns
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,           -- EmployeeID is an integer and set as the Primary Key (must be unique and cannot be NULL)
    FirstName VARCHAR(50) NOT NULL,       -- FirstName is a text field of up to 50 characters and cannot be NULL
    LastName VARCHAR(50) NOT NULL,        -- LastName is a text field of up to 50 characters and cannot be NULL
    Department VARCHAR(50)                -- Department is a text field of up to 50 characters and can be NULL
);

-- Insert multiple records into the Employees table
INSERT INTO Employees (EmployeeID, FirstName, LastName, Department)
VALUES 
(1, 'Shiv', 'yelave', 'HR'),         -- Insert employee with ID 1 into the HR department
(2, 'Ayush', 'yelave', 'HR'),        -- Insert employee with ID 2 into the HR department
(3, 'Prayag', 'yelave', 'HR'),       -- Insert employee with ID 3 into the HR department
(4, 'Deven', 'yelave', 'HR');        -- Insert employee with ID 4 into the HR department

-- Select specific columns from the Employees table where the department is 'HR'
SELECT EmployeeID, FirstName, LastName
FROM Employees
WHERE Department = 'HR';             -- Retrieve EmployeeID, FirstName, and LastName for employees in the HR department

-- Update the Department for the employee with EmployeeID 1
UPDATE Employees
SET Department = 'Finance'           -- Change department to 'Finance' for the employee with ID 1
WHERE EmployeeID = 1;

-- Delete the employee record with EmployeeID 1
DELETE FROM Employees
WHERE EmployeeID = 1;                -- Remove the employee with ID 1 from the Employees table
