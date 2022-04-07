/*Joohan Lee(joohanl@usc.edu)*/
/*livesql*/
/* Q5_v2 */

-- Create table to test --
CREATE TABLE INS_SUB(
    Instructor CHAR(20) NOT NULL,
    Subject CHAR(20) NOT NULL
);

-- Insert data to test --
INSERT INTO INS_SUB VALUES('Aleph','Scratch');
INSERT INTO INS_SUB VALUES('Aleph','Java');
INSERT INTO INS_SUB VALUES('Aleph','Processing');
INSERT INTO INS_SUB VALUES('Bit','Python');
INSERT INTO INS_SUB VALUES('Bit','JavaScript');
INSERT INTO INS_SUB VALUES('Bit','Java');
INSERT INTO INS_SUB VALUES('CRC','Python');
INSERT INTO INS_SUB VALUES('CRC','JavaScript');
INSERT INTO INS_SUB VALUES('Dat','Scratch');
INSERT INTO INS_SUB VALUES('Dat','Python');
INSERT INTO INS_SUB VALUES('Dat','JavaScript');
INSERT INTO INS_SUB VALUES('Emscr','Scratch');
INSERT INTO INS_SUB VALUES('Emscr','Processing');
INSERT INTO INS_SUB VALUES('Emscr','JavaScript');
INSERT INTO INS_SUB VALUES('Emscr','Python');

-- Select the project(s) where only step 0 has been completed. --
SELECT Instructor FROM INS_SUB WHERE Subject IN('JavaScript', 'Scratch', 'Python')
GROUP BY Instructor HAVING COUNT(Instructor) = 3;
/* 
EXPLANATION
Select all instructors who teach one of 'JavaScript', 'Scratch', 'Python'.
Group it by instructor and count the number of instructors.
If there are 3 rows with same instructor, he/she must teach 3 subjects: 'JavaScript', 'Scratch', 'Python'.
*/