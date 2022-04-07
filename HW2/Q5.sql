/*Joohan Lee(joohanl@usc.edu)*/
/*livesql*/

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
SELECT Instructor FROM INS_SUB 
    WHERE Subject = 'JavaScript' AND Instructor IN(
        SELECT Instructor FROM INS_SUB WHERE Subject = 'Scratch' AND Instructor IN(
            SELECT Instructor FROM INS_SUB WHERE Subject = 'Python'));
/* 
EXPLANATION 
We should find the instructors who teach all of 'JavaScript', 'Scratch', and 'Python'.
Therefore, I first selected instructors who teach 'Python' in the last SELECT expression with WHERE condition.
And then, I selected instrcutors who also teach 'Scratch' among them by the second SELECT expression with WHERE condition and IN condition.
Finally, I selected instructors who also teach 'JavaScript' among them by the first SELECT expression with WHERE condition and IN condition.
*/