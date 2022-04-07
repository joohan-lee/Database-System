/*Joohan Lee(joohanl@usc.edu)*/
/*livesql*/

-- Create table to test --
CREATE TABLE Instructor(
    IID CHAR(4) NOT NULL,
    Name CHAR(30) NOT NULL,
    Dept CHAR(30) NOT NULL,
    HourRate INTEGER NOT NULL,
    PRIMARY KEY(IID)
);

CREATE TABLE Class(
    CID CHAR(4) NOT NULL,
    ClassName CHAR(50) NOT NULL,
    Language CHAR(15) NOT NULL,
    NumOfMaxStu INTEGER NOT NULL,
    NumOfEnrolledStu INTEGER NOT NULL,
    IID CHAR(4),
    PRIMARY KEY(CID),
    CONSTRAINT FK_Instructor FOREIGN KEY (IID) REFERENCES Instructor(IID)
);

-- Insert data to test --
INSERT INTO Instructor VALUES('0001', 'John' , 'Computer Science', 40);
INSERT INTO Instructor VALUES('0002', 'Jacob', 'Computer Science', 40);
INSERT INTO Instructor VALUES('0003', 'Luke', 'Computer Science', 40);
INSERT INTO Instructor VALUES('0004', 'Rachel', 'Computer Science', 40);
INSERT INTO Instructor VALUES('0005', 'Tom', 'Computer Science', 40);
INSERT INTO Instructor VALUES('0006', 'Peter', 'Computer Science', 40);
INSERT INTO Instructor VALUES('0007', 'Kathy', 'Computer Science', 40);
INSERT INTO Instructor VALUES('0008', 'Sean', 'Computer Science', 40);
INSERT INTO Instructor VALUES('0009', 'Jessica', 'Computer Science', 40);

INSERT INTO Class VALUES('9001', 'Introduction to Programming', 'C', 100, 100, '0001');
INSERT INTO Class VALUES('9002', 'Window Programming', 'C#', 50, 43, '0005');
INSERT INTO Class VALUES('9003', 'Web Programming', 'Java', 40, 35, '0003');
INSERT INTO Class VALUES('9004', 'Data Mining', 'Python', 100, 98, '0002');
INSERT INTO Class VALUES('9005', 'Object Oriented Programming', 'C++', 100, 83, '0008');
INSERT INTO Class VALUES('9006', 'Web Programming 2', 'JavaScript', 40, 40, '0004');
INSERT INTO Class VALUES('9007', 'Introduction to Programming 2', 'Rust', 70, 55, '0001');
INSERT INTO Class VALUES('9008', 'Window Programming 2', 'C++', 60, 50, '0005');
INSERT INTO Class VALUES('9009', 'Introduction to Big Data Analysis', 'R', 50, 50, '0002');

-- the highest bonus amount paid --
SELECT MAX(Bonus) FROM (SELECT Instructor.IID, Instructor.Name, HourRate, SUM(Class.NumOfEnrolledStu) AS sum_of_class_counts, HourRate * SUM(Class.NumOfEnrolledStu) * 0.1 AS Bonus
    FROM Instructor, Class 
    WHERE Instructor.IID = Class.IID 
    GROUP BY Instructor.IID, HourRate, Instructor.Name);
    
/*
MAX(BONUS)
620 
*/

/* ---------------------------------------------------------------------------------------- */
/* Below are just for comments about tables for you to be able to refer for grading easier.*/
/*
-- SELECT * FROM Instructor; --
IID	NAME	DEPT	HOURRATE
0001	John                          	Computer Science              	40
0002	Jacob                         	Computer Science              	40
0003	Luke                          	Computer Science              	40
0004	Rachel                        	Computer Science              	40
0005	Tom                           	Computer Science              	40
0006	Peter                         	Computer Science              	40
0007	Kathy                         	Computer Science              	40
0008	Sean                          	Computer Science              	40
0009	Jessica                       	Computer Science              	40
*/
/*
-- SELECT * FROM Class; --
CID	CLASSNAME	LANGUAGE	NUMOFMAXSTU	NUMOFENROLLEDSTU	IID
9001	Introduction to Programming                       	C              	100	100	0001
9002	Window Programming                                	C#             	50	43	0005
9003	Web Programming                                   	Java           	40	35	0003
9004	Data Mining                                       	Python         	100	98	0002
9005	Object Oriented Programming                       	C++            	100	83	0008
9006	Web Programming 2                                 	JavaScript     	40	40	0004
9007	Introduction to Programming 2                     	Rust           	70	55	0001
9008	Window Programming 2                              	C++            	60	50	0005
9009	Introduction to Big Data Analysis                 	R              	50	50	0002
*/

/* 
SELECT Instructor.IID, Instructor.Name, HourRate, SUM(Class.NumOfEnrolledStu) AS sum_of_class_counts, HourRate * SUM(Class.NumOfEnrolledStu) * 0.1 AS Bonus,
    FROM Instructor, Class 
    WHERE Instructor.IID = Class.IID 
    GROUP BY Instructor.IID, HourRate, Instructor.Name;

IID	NAME	HOURRATE	SUM_OF_CLASS_COUNTS	BONUS
0004	Rachel                        	40	40	160
0001	John                          	40	155	620
0005	Tom                           	40	93	372
0002	Jacob                         	40	148	592
0008	Sean                          	40	83	332
0003	Luke                          	40	35	140    
*/

