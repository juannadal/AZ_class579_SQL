-- Create the Department table first as it is referenced by Employee
CREATE TABLE Worker.Department (
    DepartmentID TINYINT NOT NULL,
    DepartmentNm CHAR(30) NOT NULL,
    PRIMARY KEY (DepartmentID)
);

-- Create the Equipment table
CREATE TABLE Worker.Equipment (
    EquipmentID INTEGER NOT NULL,
    EquipmentName VARCHAR(30) NOT NULL,
    EquipmentCostAmount DECIMAL(13, 2),
    PRIMARY KEY (EquipmentID)
);

-- Create the Training table
CREATE TABLE Worker.Training (
    TrainingID INTEGER NOT NULL,
    TrainingName VARCHAR(50) NOT NULL,
    PRIMARY KEY (TrainingID)
);

-- Create the Employee table which references Department
CREATE TABLE Worker.Employee (
    EmployeeID INTEGER NOT NULL,
    DepartmentID TINYINT NOT NULL,
    FirstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(20) NOT NULL,
    Address VARCHAR(50),
    PhoneNumberTxt VARCHAR(15),
    HireDate DATE NOT NULL,
    PRIMARY KEY (EmployeeID),
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

-- Create the Trainer table which references Training
CREATE TABLE Worker.Trainer (
    TrainerID INTEGER NOT NULL,
    TrainingID INTEGER NOT NULL,
    TrainerFirstName VARCHAR(20) NOT NULL,
    TrainerLastName VARCHAR(20) NOT NULL,
    PRIMARY KEY (TrainerID),
    FOREIGN KEY (TrainingID) REFERENCES Training(TrainingID)
);

-- Create the junction table for Employee and Equipment
CREATE TABLE Worker.EmployeeEquipment (
    EmployeeID INTEGER NOT NULL,
    EquipmentID INTEGER NOT NULL,
    PRIMARY KEY (EmployeeID, EquipmentID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (EquipmentID) REFERENCES Equipment(EquipmentID)
);

-- Create the junction table for Employee and Training
CREATE TABLE Worker.EmployeeTraining (
    EmployeeID INTEGER NOT NULL,
    TrainingID INTEGER NOT NULL,
    PRIMARY KEY (EmployeeID, TrainingID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (TrainingID) REFERENCES Training(TrainingID)
);
