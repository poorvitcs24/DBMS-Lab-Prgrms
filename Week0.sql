use mysql;
GRANT ALL PRIVILEGES ON *.* TO "poorvi";
FLUSH PRIVILEGES;

use 1BM24CS204;
create table uno
(
name varchar(20)
);
select * from uno;
CREATE TABLE STUDENT (
stdid INT(5), stdname varchar(20), dob date,
doj date, fee int(5), gender char );
DESC STUDENT;
INSERT INTO STUDENT ( stdid, stdname, dob, doj, fee, gender)
VALUES (1, "SHAREEF", "2001-01-10", "2001-10-05", 10000,"M");
INSERT INTO STUDENT ( stdid, stdname, dob, doj, fee, gender)
VALUES (2, "NADEEM", "2019-11-3","2001-10-26", 11000, "M");
ALTER TABLE STUDENT_INFO ADD PHONE_NO varchar(10);
ALTER TABLE STUDENT_INFO
RENAME COLUMN PHONE_NO TO STUDENT_NO;
ALTER TABLE STUDENT RENAME TO STUDENT_INFO;
SELECT * FROM STUDENT_INFO;
ALTER TABLE STUDENT_INFO DROP COLUMN gender;
DELETE FROM STUDENT_INFO WHERE stdid = 2;
