/*Joohan Lee(joohanl@usc.edu)*/
/*livesql*/
/* Q5_v3 */

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
SELECT Instructor FROM INS_SUB WHERE Subject = 'JavaScript'
INTERSECT SELECT Instructor FROM INS_SUB WHERE Subject = 'Scratch'
INTERSECT SELECT Instructor FROM INS_SUB WHERE Subject = 'Python';
/*
EXPLANATION
Intersection between 3 tables, one has instructors teaching 'JavaScript' and another has instructors teaching 'Scratch' 
and the other has instructors 'Python', will only include the instructors teaching all of 3 subjects.
*/