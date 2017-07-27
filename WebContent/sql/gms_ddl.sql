--id, name, password,ssn,regdate
DROP TABLE Board;
DROP SEQUENCE article_seq;

CREATE SEQUENCE article_seq
 START WITH     1000
 INCREMENT BY   1
 NOCACHE
 NOCYCLE;

 CREATE SEQUENCE grade_seq 
 START WITH 1
 INCREMENT BY 1
 NOCACHE
 NOCYCLE;


CREATE TABLE Member(
	id VARCHAR2(10),
	name VARCHAR2(20),
	password VARCHAR2(10),
	ssn VARCHAR2(20),
	regdate DATE,
	PRIMARY KEY(id)
);


CREATE TABLE Board(
	article_seq NUMBER,
	id VARCHAR2(10),
	title VARCHAR2(20),
	content VARCHAR2(100),
	regdate DATE,
	hitcount NUMBER,
	PRIMARY KEY (article_seq),
	FOREIGN KEY (id) REFERENCES  Member(id)	ON DELETE CASCADE
);


ALTER TABLE Member ADD major_id VARCHAR2(10);

ALTER TABLE Member
ADD CONSTRAINT member_fk_major
FOREIGN KEY (major_id)
REFERENCES Major(major_id)
ON DELETE CASCADE;

CREATE TABLE Major(
	major_id VARCHAR2(10),
	title VARCHAR2(10),
	PRIMARY KEY (major_id)
);

CREATE TABLE Subject(
	subj_id VARCHAR2(10),
	title VARCHAR2(10),
	major_id VARCHAR2(10),
	PRIMARY KEY (subj_id),
	FOREIGN KEY (major_id) REFERENCES Major(major_id) ON DELETE CASCADE
);
drop table grade;

CREATE TABLE Grade(
	grade_seq NUMBER,
	score VARCHAR2(10),
	exam_date VARCHAR2(10),
	subj_id VARCHAR2(10),
	id VARCHAR2(10),
	PRIMARY KEY (grade_seq),
	FOREIGN KEY (subj_id) REFERENCES Subject(subj_id) ON DELETE CASCADE,
	FOREIGN KEY (id) REFERENCES Member(id) ON DELETE CASCADE
);

create table grade(
   grade_seq NUMBER,
   score VARCHAR2(10),
   exam_date DATE,
   subj_id VARCHAR2(10),
   id VARCHAR2(10), 
   primary key(grade_seq),
   foreign key(subj_id) references subject(subj_id) on delete cascade,
   foreign key(id) references MEMBER(id) on delete cascade
);


select * from tab;
SELECT * FROM MEMBER;
SELECT * FROM MAJOR;
SELECT * FROM SUBJECT;
SELECT * FROM GRADE;
SELECT * FROM BOARD;

--phone,email,major,subject
ALTER table Member ADD phone VARCHAR2(13);
ALTER table Member ADD email VARCHAR2(13);
SELECT * FROM MEMBER;
ALTER TABLE MEMBER ADD email VARCHAR2(20);


alter table Member ADD profile varchar2(20);

select * from MEMBER;




