-- Gym--
CREATE TABLE Gym (
	ID INT PRIMARY KEY,
	Gym_Name VARCHAR,
	Address VARCHAR,
	City VARCHAR,
	Zipcode VARCHAR
);

-- Trainers --
CREATE TABLE Trainers (
	ID INT PRIMARY KEY,
	First_Name VARCHAR,
	Last_Name VARCHAR
);

-- Members --
CREATE TABLE Members (
	ID INT PRIMARY KEY,
	First_Name VARCHAR,
	Last_Name VARCHAR,
	Address VARCHAR,
	City VARCHAR
);

-- Payments --
CREATE TABLE Payments (
		ID INT PRIMARY KEY,
		CreditCard_Info INT,
		Billing_Zip INT
); 

SELECT * 
FROM Payments 
