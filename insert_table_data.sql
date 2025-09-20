use worker;

-- Populating the Department table
INSERT INTO WORKER.Department (DepartmentID, DepartmentNm) VALUES
(1, 'Research & Development'),
(2, 'Production'),
(3, 'IT Support'),
(4, 'Operations'),
(5, 'Customer Service'),
(6, 'Purchasing'),
(7, 'Sales & Marketing'),
(8, 'Human Resource Management'),
(9, 'Accounting and Finance'),
(10, 'Legal Department');

-- Populating the Equipment table
INSERT INTO WORKER.Equipment (EquipmentID, EquipmentName,EquipmentCostAmount) VALUES
(1, 'Notebook Computers',2000),
(2, 'Headsets',20),
(3, 'Computer Monitor',500),
(4, 'Multi-Function Printers',300),
(5, 'Projector or a Big Screen TV',450),
(6, 'Servers',10000),
(7, 'Internet Modem',50),
(8, 'Cell Phone',600);

-- Populating the Training table
INSERT INTO WORKER.Training (TrainingID, TrainingName) VALUES
(1, 'COVID-19 Awareness and Protection Training'),
(2, 'Code of Conduct Training'),
(3, 'Safety Training'),
(4, 'Intro to Python'),
(5, 'Machine Learning'),
(6, 'Microsoft Certifications'),
(7, 'Security and Privacy'),
(8, 'Product Knowledge'),
(9, 'Sales Skills'),
(10, 'Employee Relations'),
(11, 'Travel and Expense Management');

-- Populating the Employee table
INSERT INTO WORKER.Employee (EmployeeID, DepartmentID, FirstName, LastName, Address, PhoneNumberTxt, HireDate) VALUES
(1, 2, 'Andy', 'Wong', '345 South Street', '(603) 555-6880', '2001-01-15'),
(2, 1, 'John', 'Wilson', '560 Broadway', '(518) 555-6690', '2016-03-19'),
(3, 3, 'Vivek', 'Pandey', '15 Mineral Drive', '(603) 555-4420', '2003-11-15'),
(4, 7, 'Nola', 'Davis', '15 Long Ave', '(478) 555-8822', '2016-03-23'),
(5, 8, 'Kathy', 'Cooper', '15 Hatter Drive', '(212) 555-8630', '2011-11-18'),
(6, 9, 'Tom', 'Harper', '64 Highland Street', '(212) 555-7755', '2010-04-11');

-- Populating the Trainer table
INSERT INTO WORKER.Trainer (TrainerID, TrainingID, TrainerFirstName, TrainerLastName) VALUES
(1, 1, 'James', 'Smith'),
(2, 1, 'Johnny', 'Khor'),
(3, 2, 'Michael', 'Smith'),
(4, 3, 'Maria', 'Garcia'),
(5, 4, 'John', NULL),
(6, 4, 'Paul', 'Deitel'),
(7, 5, 'Mike', 'Taylor'),
(8, 5, 'Avinash', 'Navlani'),
(9, 6, 'Robert', 'Smith'),
(10, 7, 'Maria', 'Rodriguez'),
(11, 8, 'Mike', 'Donlon'),
(12, 9, 'Kathy', 'Corby'),
(13, 10, 'Mary', 'Garcia'),
(14, 10, 'Vanessa', NULL),
(15, 11, 'Jordan', NULL),
(16, 11, 'Maria', 'Hernandez');

-- Populating the EmployeeEquipment junction table
INSERT INTO WORKER.EmployeeEquipment (EmployeeID, EquipmentID) VALUES
(1, 1),
(2, 1), (2, 3),
(3, 1), (3, 2), (3, 3),
(4, 1), (4, 2),
(5, 1), (5, 2), (5, 3),
(6, 1), (6, 3);

-- Populating the EmployeeTraining junction table
INSERT INTO WORKER.EmployeeTraining (EmployeeID, TrainingID) VALUES
(1, 2), (1, 3),
(2, 2), (2, 4), (2, 5),
(3, 2), (3, 6), (3, 7),
(4, 2), (4, 8), (4, 9),
(5, 2), (5, 10),
(6, 2), (6, 11);






ALTER TABLE employee
MODIFY COLUMN lastname VARCHAR(50) NULL;
