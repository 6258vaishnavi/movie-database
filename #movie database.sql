#movie database


CREATE TABLE ACTOR ( 
ACT_ID NUMBER (3),
ACT_NAME VARCHAR (20),
ACT_GENDER CHAR (1), 
PRIMARY KEY (ACT_ID));


CREATE TABLE DIRECTOR ( 
DIR_ID NUMBER (3),
DIR_NAME VARCHAR (20),
DIR_PHONE NUMBER (10), 
PRIMARY KEY (DIR_ID));


CREATE TABLE MOVIES ( 
MOV_ID NUMBER (4),
MOV_TITLE VARCHAR (25),
MOV_YEAR NUMBER (4),
MOV_LANG VARCHAR (12),
DIR_ID NUMBER (3), 
PRIMARY KEY (MOV_ID),
FOREIGN KEY (DIR_ID) REFERENCES DIRECTOR (DIR_ID));

INSERT INTO ACTOR VALUES (101,'ANUSHKA','F'); 
INSERT INTO ACTOR VALUES (102,'PRABHAS','M'); 
INSERT INTO ACTOR VALUES (103,'RAMYA','F'); 
INSERT INTO ACTOR VALUES (104,'RAJKUMAR','M');


INSERT INTO DIRECTOR VALUES (10,'RAJAMOULI', 7891611001); 
INSERT INTO DIRECTOR VALUES (11,'FARAN AKTHAR', 8766138911); 
INSERT INTO DIRECTOR VALUES (12,'SANJAY LEELA', 8886776531);
INSERT INTO DIRECTOR VALUES (13,'MANIRATNAM', 6789776530);


INSERT INTO MOVIES VALUES (2001,'BAHUBALI-2', 2017, 'TELUGU', 10); 
INSERT INTO MOVIES VALUES (2002,'BAHUBALI-1', 2015, 'TELUGU', 10); 
INSERT INTO MOVIES VALUES (2003,'AKASH', 2008, 'KANNADA', 11); 
INSERT INTO MOVIES VALUES (2004,'PALLAVI ANUPALLAVI', 2011, 'KANNADA', 13);

SELECT * FROM ACTOR;
SELECT * FROM DIRECTOR;
SELECT * FROM MOVIES;
