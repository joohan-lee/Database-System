/*Joohan Lee(joohanl@usc.edu)*/
/*livesql*/

-- Create table to test --
CREATE TABLE ProjectStatus(
    PID CHAR(4) NOT NULL,
    Step INTEGER NOT NULL,
    Status CHAR(1) NOT NULL
);

-- Insert data to test --
INSERT INTO ProjectStatus VALUES('P100', 0, 'C');
INSERT INTO ProjectStatus VALUES('P100', 1, 'W');
INSERT INTO ProjectStatus VALUES('P100', 2, 'W');
INSERT INTO ProjectStatus VALUES('P201', 0, 'C');
INSERT INTO ProjectStatus VALUES('P201', 1, 'C');
INSERT INTO ProjectStatus VALUES('P333', 0, 'W');
INSERT INTO ProjectStatus VALUES('P333', 1, 'W');
INSERT INTO ProjectStatus VALUES('P333', 2, 'W');
INSERT INTO ProjectStatus VALUES('P333', 3, 'W');

-- Select the project(s) where only step 0 has been completed. --
SELECT PID FROM ProjectStatus WHERE Step = 1 AND Status = 'W' AND PID IN (SELECT PID FROM ProjectStatus WHERE Step = 0 AND Status = 'C');
