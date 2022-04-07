/*Joohan Lee(joohanl@usc.edu)*/
/*livesql*/
/* 
The rooms can be reserved for a block of a few hours(at least an hour) and start & end on the hour.
Thus, we can just store when it is started to be occupied, and if a student reserves a few hours, then we can store a few of startTimes.
*/

-- Redesign the table --
CREATE TABLE ProjectRoomBookings
(roomNum INTEGER NOT NULL,
occupyHour INTEGER NOT NULL,
groupName CHAR(10) NOT NULL,
PRIMARY KEY (roomNum, occupyHour));

-- Insert some data to test --
INSERT INTO ProjectRoomBookings(roomNum, occupyHour, groupName) VALUES (1, 3, 'team1');
INSERT INTO ProjectRoomBookings(roomNum, occupyHour, groupName) VALUES (1, 4, 'team1');
INSERT INTO ProjectRoomBookings(roomNum, occupyHour, groupName) VALUES (2, 8, 'team2');
INSERT INTO ProjectRoomBookings(roomNum, occupyHour, groupName) VALUES (2, 9, 'team2');
INSERT INTO ProjectRoomBookings(roomNum, occupyHour, groupName) VALUES (1, 18, 'team1');
INSERT INTO ProjectRoomBookings(roomNum, occupyHour, groupName) VALUES (1, 19, 'team1');
INSERT INTO ProjectRoomBookings(roomNum, occupyHour, groupName) VALUES (1, 20, 'team1');
/*Store which room is reserved,and when and who reserves it for one hour slot*/
