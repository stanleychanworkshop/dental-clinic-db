CREATE TABLE Dentist (
	DID INT,
    Name VARCHAR(100) NOT NULL,
    Phone CHAR(10) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    DateJoined DATE,
    PRIMARY KEY (DID)
);

CREATE TABLE Service (
	SID INT,
    Name VARCHAR(100) NOT NULL,
    Cost NUMERIC(10, 2) NOT NULL,
    PRIMARY KEY (SID)
);

CREATE TABLE Patient (
	PID INT,
    Name VARCHAR(100) NOT NULL,
    Phone CHAR(10) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    DateJoined DATE,
    PRIMARY KEY (PID)
);

CREATE TABLE Appointment (
	AID INT,
    Date DATE NOT NULL,
    Time TIME NOT NULL,
    Duration TIME NOT NULL,
    DID INT NOT NULL,
    PID INT NOT NULL,
    PRIMARY KEY (AID),
    FOREIGN KEY (DID) REFERENCES Dentist (DID),
    FOREIGN KEY (PID) REFERENCES Patient (PID)
);

CREATE TABLE Insurance_Policy (
	Insurer VARCHAR(30),
    PolicyNo VARCHAR(30),
    PRIMARY KEY (Insurer, PolicyNo)
);

CREATE TABLE Payment (
	PaymentID INT,
    Date DATE NOT NULL,
    isPaidByPatient TINYINT NOT NULL,
    isPaidByInsurance TINYINT NOT NULL,
    PatientAmount NUMERIC(10, 2),
    PolicyAmount NUMERIC(10, 2),
    AID INT NOT NULL,
    Insurer VARCHAR(30),
    PolicyNo VARCHAR(30),
    PRIMARY KEY (PaymentID),
    FOREIGN KEY (Insurer, PolicyNo) REFERENCES Insurance_Policy (Insurer, PolicyNo),
    CHECK (isPaidByPatient >= 0 AND isPaidByPatient <= 1),
    CHECK (isPaidByInsurance >= 0 AND isPaidByInsurance <= 1)
);

CREATE TABLE Service_Involved_In_Appointment (
	SID INT,
    AID INT,
    PRIMARY KEY (SID, AID),
    FOREIGN KEY (SID) REFERENCES Service (SID),
    FOREIGN KEY (AID) REFERENCES Appointment (AID)
);

CREATE TABLE Referral (
	RefereePID INT,
    ReferrerPID INT,
    PRIMARY KEY (RefereePID),
    FOREIGN KEY (ReferrerPID) REFERENCES Patient (PID),
    FOREIGN KEY (RefereePID) REFERENCES Patient (PID)
);