-- Insert values into Dentist table
INSERT INTO Dentist VALUES (1, 'Den Smile', '1234567890', '1234 Smiley Street V6E 3F4', NULL);
INSERT INTO Dentist VALUES (2, 'Alan To', '6047776721', '56 John Avenue East V5T 9E8', '2022-09-02');
INSERT INTO Dentist VALUES (3, 'Smith Jos Chan', '7788006547', '389 Ottawa Road V5W 2G9', '2023-01-01');
INSERT INTO Dentist VALUES (4, 'Nancy Stairs', '2345698708', 'Flat 1204, 80 Silver Avenue V5E 3T2', '2023-01-01');
INSERT INTO Dentist VALUES (5, 'Hello World', '1000101010', 'B019, 100 49th Avenue West', '2023-03-01');

-- Insert values into Service table
INSERT INTO Service VALUES (1, 'Basic checkup', 30);
INSERT INTO Service VALUES (2, 'Basic cleaning', 50);
INSERT INTO Service VALUES (3, 'Filling (one tooth)', 100);
INSERT INTO Service VALUES (4, 'Filling (two teeth)', 200);
INSERT INTO Service VALUES (5, 'Filling (three or more teeth)', 300);
INSERT INTO Service VALUES (6, 'Dental guard (per each)', 200);
INSERT INTO Service VALUES (7, 'Follow-up', 0);

-- Insert values into Patient table
INSERT INTO Patient VALUES (1, 'Adam Smith', '9876543210', '456 Money Street V5R 8T1', '2022-10-01');
INSERT INTO Patient VALUES (2, 'Sherlock Holmes', '8487950168', '221B Baker Street', '2022-10-01');
INSERT INTO Patient VALUES (3, 'John Stuart Mill', '8791021068', '13 Rodney Street', '2023-02-05');
INSERT INTO Patient VALUES (4, 'John Keynes', '7894805165', '1883 Economics Road', '2023-02-28');

-- Insert values into Appointment table
INSERT INTO Appointment VALUES (1, '2022-10-01', '09:30', '00:45', 1, 1);
INSERT INTO Appointment VALUES (2, '2022-11-15', '14:15', '01:00', 2, 2);
INSERT INTO Appointment VALUES (3, '2022-11-15', '14:15', '00:30', 1, 1);
INSERT INTO Appointment VALUES (4, '2023-02-14', '16:00', '01:00', 3, 4);
INSERT INTO Appointment VALUES (5, '2023-03-01', '10:30', '00:45', 4, 3);
INSERT INTO Appointment VALUES (6, '2023-03-01', '10:30', '01:30', 2, 2);
INSERT INTO Appointment VALUES (7, '2023-03-01', '15:00', '01:00', 3, 4);

-- Insert values into Insurance_Policy table
INSERT INTO Insurance_Policy VALUES ('Pacific Blue Cross', '000001');
INSERT INTO Insurance_Policy VALUES ('Pacific Blue Cross', '000020A');
INSERT INTO Insurance_Policy VALUES ('SunLife', '123-5068');
INSERT INTO Insurance_Policy VALUES ('Canadian Insurance', 'B1234146');
INSERT INTO Insurance_Policy VALUES ('Canadian Insurance', 'B1234147');

-- Insert values into Payment table
INSERT INTO Payment VALUES (1, '2022-10-01', 1, 1, 20, 60, 1, 'SunLife', '123-5068');
INSERT INTO Payment VALUES (2, '2022-11-15', 0, 1, NULL, 100, 2, 'Pacific Blue Cross', '000001');
INSERT INTO Payment VALUES (3, '2022-11-20', 1, 0, 30, NULL, 2, NULL, NULL);
INSERT INTO Payment VALUES (4, '2023-02-14', 1, 1, 20, 180, 4, 'Pacific Blue Cross', '000020A');
INSERT INTO Payment VALUES (5, '2023-02-14', 1, 1, 10, 20, 4, 'Canadian Insurance', 'B1234146');
INSERT INTO Payment VALUES (6, '2023-03-01', 1, 0, 50, NULL, 5, NULL, NULL);
INSERT INTO Payment VALUES (7, '2023-03-01', 0, 1, NULL, 20, 4, 'Canadian Insurance', 'B1234146');
INSERT INTO Payment VALUES (8, '2023-03-01', 1, 1, 50, 50, 7, 'Canadian Insurance', 'B1234146');
INSERT INTO Payment VALUES (9, '2023-03-01', 1, 0, 10, NULL, 7, NULL, NULL);

-- Insert values into Service_Involved_In_Appointment table
INSERT INTO Service_Involved_In_Appointment VALUES (1, 1);
INSERT INTO Service_Involved_In_Appointment VALUES (2, 1);
INSERT INTO Service_Involved_In_Appointment VALUES (1, 2);
INSERT INTO Service_Involved_In_Appointment VALUES (3, 2);
INSERT INTO Service_Involved_In_Appointment VALUES (7, 3);
INSERT INTO Service_Involved_In_Appointment VALUES (2, 4);
INSERT INTO Service_Involved_In_Appointment VALUES (6, 4);
INSERT INTO Service_Involved_In_Appointment VALUES (2, 5);
INSERT INTO Service_Involved_In_Appointment VALUES (5, 6);
INSERT INTO Service_Involved_In_Appointment VALUES (1, 7);
INSERT INTO Service_Involved_In_Appointment VALUES (3, 7); 

-- Insert values into Referral table
INSERT INTO Referral VALUES (3, 1);
INSERT INTO Referral VALUES (4, 1);