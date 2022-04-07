/*Joohan Lee(joohanl@usc.edu)*/
/*livesql*/

-- Create table to test --
CREATE TABLE Enrollment
(SID INTEGER NOT NULL,
ClassName CHAR(20) NOT NULL,
Grade CHAR NOT NULL);


-- Insert data to test --
INSERT INTO ENROLLMENT VALUES(123, 'Processing', 'A');
INSERT INTO ENROLLMENT VALUES(123, 'Python', 'B');
INSERT INTO ENROLLMENT VALUES(123, 'Scratch', 'B');
INSERT INTO ENROLLMENT VALUES(662, 'Java', 'B');
INSERT INTO ENROLLMENT VALUES(662, 'Python', 'A');
INSERT INTO ENROLLMENT VALUES(662, 'JavaScript', 'A');
INSERT INTO ENROLLMENT VALUES(662, 'Scratch', 'B');
INSERT INTO ENROLLMENT VALUES(345, 'Scratch', 'A');
INSERT INTO ENROLLMENT VALUES(345, 'JavaScript', 'B');
INSERT INTO ENROLLMENT VALUES(345, 'Python', 'A');
INSERT INTO ENROLLMENT VALUES(555, 'Python', 'B');
INSERT INTO ENROLLMENT VALUES(555, 'JavaScript', 'B');
INSERT INTO ENROLLMENT VALUES(213, 'JavaScript', 'A');

-- select class name and the number of students enrolled in the class, sorted in reverse order of enrollment --
SELECT ClassName, COUNT(*) AS Total FROM Enrollment GROUP BY ClassName ORDER BY Total DESC;
