DROP TABLE EMPLOYEE PURGE;

CREATE TABLE EMPLOYEES1(
      EMPLOYEE_ID INTEGER PRIMARY KEY,
      FIRST_NAME VARCHAR2(50)NOT NULL,
      LAST_NAME VARCHAR2(50)NOT NULL,
      HIRE_DATE DATE,
      SALARY NUMBER(10, 2)
);

INSERT INTO EMPLOYEES1 VALUES(101, 'John', 'Doe', '01-Jul-2022', 60000.00);

1 row inserted.

INSERT INTO EMPLOYEES1 VALUES(102,'Jane','Smith',null,55000.00);

1 row inserted.

INSERT INTO EMPLOYEES1 VALUES(103,'Michael','Johnson','15-mar-2023',null);

1 row inserted.

INSERT INTO EMPLOYEES1 VALUES(104,'Emily','Williams',null,null);

1 row inserted.

INSERT INTO EMPLOYEES1 VALUES(105,'Daniel','Brown','05-sep-2022',48000.00);

1 row inserted.

INSERT INTO EMPLOYEES1 VALUES(106,'Laura','Davis','20-apr-2023',52000.00);

1 row inserted.

INSERT INTO EMPLOYEES1 VALUES (107,'Matthew','Wilson','10-dec-2021',54000.00);

1 row inserted.

INSERT INTO EMPLOYEES1 VALUES(108,'Emma','Brown',null,null);

1 row inserted.

INSERT INTO EMPLOYEES1 VALUES(109,'Olivia','Jones','30-may-2023',59000.0);

1 row inserted.

INSERT INTO EMPLOYEES1 VALUES(110,'Noah','Smith','08-aug-2022',null);

1 row inserted.

INSERT INTO EMPLOYEES1 VALUES(111,'William','Johnson','25-jun-2021',45000.00);

1 row inserted.

INSERT INTO EMPLOYEES1 VALUES(112,'Ava','Williams',null,null);

1 row inserted.

INSERT INTO EMPLOYEES1 VALUES(113,'Sophia','Davis','18-feb-2023',57000.00);

1 row inserted.

INSERT INTO EMPLOYEES1 VALUES(114,'James','Wilson',null,null);

1 row inserted.

INSERT INTO EMPLOYEES1 VALUES(115,'Oliver','Miller','12-oct-2022',51000.00);

1 row inserted.

INSERT INTO EMPLOYEES1 VALUES(116,'Amelia','Brown',null,null);

1 row inserted.

INSERT INTO EMPLOYEES1 VALUES(117,'Benjamin','Davis','02-dec-2021',53000.00);

1 row inserted.

INSERT INTO EMPLOYEES1 VALUES(118,'Elijah','Wilson','09-mar-2023',null);

1 row inserted.

INSERT INTO EMPLOYEES1 VALUES(119,'Lucas','Brown','22-jun-2022',56000.00);

1 row inserted.

INSERT INTO EMPLOYEES1 VALUES(120,'Mia','Johnson',null,null);

1 row inserted.

OUTPUT:-

 SELECT * FROM EMPLOYEES1;

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
           101 John          Doe          01-07-22         60000
           102 Jane          Smith                         55000
           103 Michael       Johnson      15-03-23
           104 Emily         Williams
           105 Daniel        Brown        05-09-22         48000
           106 Laura         Davis        20-04-23         52000
           107 Matthew       Wilson       10-12-21         54000
           108 Emma          Brown
           109 Olivia        Jones        30-05-23         59000
           110 Noah          Smith        08-08-22
           111 William       Johnson      25-06-21         45000
           112 Ava           Williams
           113 Sophia        Davis        18-02-23         57000
           114 James         Wilson

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
           115 Oliver        Miller       12-10-22         51000
           116 Amelia        Brown
           117 Benjamin      Davis        02-12-21         53000
           118 Elijah        Wilson       09-03-23
           119 Lucas         Brown        22-06-22         56000
           120 Mia           Johnson

20 rows selected.

==========================Distinct Keyword:===========================

1.)SELECT DISTINCT FIRST_NAME FROM EMPLOYEES1;

OUTPUT:-

  FIRST_NAME 
_____________
WILLIAM
LUCAS
OLIVER
BENJEMIN
ELIJHA
AMELIA
MIA
SOPHIA
JANE
DANIEL
LAURA
NOAH
MICHAEL
EMILY

   FIRST_NAME
_____________
JOHN
MATTHEW
EMMA
OLIVIA
AVA
JAMES

2.)SELECT DISTINCT LAST_NAME FROM EMPLOYEES1;

OUTPUT:-

   LAST_NAME
____________
WILLIAMS
DOE
BROWN
DAVIS
WILSON
JOHNS
SMITH
JOHNSON
MILLER

3.)SELECT DISTINCT HIRE_DATE FROM EMPLOYEES1;

OUTPUT:-

   HIRE_DATE
____________
01-07-22
20-04-23
10-12-21
30-05-23
22-06-22
18-02-23
02-12-21

05-09-22
15-03-23
09-03-23
08-08-22
25-06-21
12-10-22

4.)SELECT DISTINCT SALARY FROM EMPLOYEES1;

OUTPUT:

   SALARY
_________
    55000
    51000
    59000
    56000
    60000
    48000
    54000
    45000

    53000
    52000
    57000

5.)SELECT DISTINCT EMPLOYEE_ID FROM EMPLOYEES1;

OUTPUT:-

   EMPLOYEE_ID 
______________
             1
             2
             3
             4
             5
             6
             7
             8
             9
            10
            11
            12
            13
            14

   EMPLOYEE_ID
______________
            15
            16
            17
            18
            19
            20

============================== Comparing Values: =======================

1.)SELECT * FROM EMPLOYEES1 WHERE SALARY > 50000;

OUTPUT:-

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY 
______________ _____________ ____________ ____________ _________
             	1 	JOHN               DOE             01-07-22         60000
             	2 	JANE               SMITH                                55000
             	6 	LAURA            DAVIS           20-04-23         52000
             	7 	MATTHEW      WILSON       10-12-21         54000
             	9 	OLIVIA            JOHNS          30-05-23         59000
            	10 	NOAH             SMITH           08-08-22         54000
            	13 	SOPHIA          DAVIS            18-02-23         57000
            	15 	OLIVER          MILLER         12-10-22         51000
            	17 	BENJEMIN     DAVIS            02-12-21         53000
            	19 	LUCAS           BROWN         22-06-22         56000

2.)SELECT * FROM EMPLOYEES1 WHERE HIRE_DATE >= '01-JAN-2022';

OUTPUT:-

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	1 	JOHN          DOE          01-07-22         60000
             	3 	MICHAEL       JOHNSON      15-03-23
             	5 	DANIEL        BROWN        05-09-22         48000
             	6 	LAURA         DAVIS        20-04-23         52000
             	9 	OLIVIA        JOHNS        30-05-23         59000
            	10 	NOAH          SMITH        08-08-22         54000
            	13 	SOPHIA        DAVIS        18-02-23         57000
            	15 	OLIVER        MILLER       12-10-22         51000
            	18 	ELIJHA        WILSON       09-03-23
            	19 	LUCAS         BROWN        22-06-22         56000


3.)SELECT * FROM EMPLOYEES1 WHERE SALARY = 60000;

OUTPUT:

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	1 	JOHN          DOE          01-07-22         60000


4.)SELECT * FROM EMPLOYEES1 WHERE FIRST_NAME LIKE 'JOHN';

OUTPUT:-

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	1 	JOHN          DOE          01-07-22         60000

5.)SELECT * FROM EMPLOYEES1 WHERE SALARY <=50000;

OUTPUT:-

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	5 	DANIEL        BROWN        05-09-22         48000
            	11 	WILLIAM       JOHNSON      25-06-21         45000

==============================LIKE OPERATORS==============================

1.)SELECT * FROM EMPLOYEES1 WHERE LAST_NAME LIKE '%SON';

OUTPUT:-

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	3 	MICHAEL       JOHNSON      15-03-23
             	7 	MATTHEW       WILSON       10-12-21         54000
            	11 	WILLIAM       JOHNSON      25-06-21         45000
            	14 	JAMES         WILSON
            	18 	ELIJHA        WILSON       09-03-23
            	20 	MIA           JOHNSON

2.)SELECT * FROM EMPLOYEES1 WHERE FIRST_NAME LIKE '%A';

OUTPUT:-

  EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	6 	LAURA         DAVIS        20-04-23         52000
             	8 	EMMA          BROWN
             	9 	OLIVIA        JOHNS        30-05-23         59000
            	12 	AVA           WILLIAMS
            	3 	SOPHIA        DAVIS        18-02-23         57000
            	16	AMELIA        BROWN
            	18 	ELIJHA        WILSON       09-03-23
           	20 	MIA           JOHNSON

3.)SELECT * FROM EMPLOYEES1 WHERE LAST_NAME LIKE 'SM%';

OUTPUT:-

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	2 	JANE          SMITH                         55000
            	10 	NOAH          SMITH        08-08-22         54000


4.)SELECT * FROM EMPLOYEES1 WHERE FIRST_NAME LIKE '%E%';

OUTPUT:-

  EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	2 	JANE          SMITH                         55000
             	3 	MICHAEL       JOHNSON      15-03-23
             	4 	EMILY         WILLIAMS
             	5 	DANIEL        BROWN        05-09-22         48000
             	7 	MATTHEW       WILSON       10-12-21         54000
             	8 	EMMA          BROWN
            	14 	JAMES         WILSON
            	15 	OLIVER        MILLER       12-10-22         51000
            	16 	AMELIA        BROWN
            	17 	BENJEMIN      DAVIS        02-12-21         53000
            	18 	ELIJHA        WILSON       09-03-23


5.)SELECT * FROM EMPLOYEES1 WHERE LAST_NAME LIKE 'BROWN';

OUTPUT:-

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	5 	DANIEL        BROWN        05-09-22         48000
             	8 	EMMA          BROWN
            	16 	AMELIA        BROWN
            	19 	LUCAS         BROWN        22-06-22         56000

==============================IN OPERATOR==============================

1.)SELECT * FROM EMPLOYEES1 WHERE EMPLOYEE_ID IN (1,2,3);

OUTPUT:

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             1 JOHN          DOE          01-07-22         60000
             2 JANE          SMITH                         55000
             3 MICHAEL       JOHNSON      15-03-23

2.)SELECT * FROM EMPLOYEES1 WHERE FIRST_NAME IN('JOHN','JANE', 'MICHAEL');

OUTPUT:-

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	1 	JOHN              DOE             01-07-22         60000
             	2 	JANE              SMITH                            55000
             	3 	MICHAEL       JOHNSON       15-03-23

3.)SELECT * FROM EMPLOYEES1 WHERE SALARY IN(50000, 55000, 60000);

OUTPUT:-

 EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             1 		JOHN          DOE      01-07-22         60000
             2 		JANE          SMITH                     55000

4.)SELECT * FROM EMPLOYEES1 WHERE LAST_NAME IN('SMITH', 'JOHNSON', 'WILLIAMS');

OUTPUT:-

  EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	2 	JANE              SMITH                        55000
             	3 	MICHAEL       JOHNSON         15-03-23
             	4 	EMILY            WILLIAMS
            	10 	NOAH             SMITH        08-08-22         54000
            	11 	WILLIAM       JOHNSON          25-06-21         45000
            	12	 AVA               WILLIAMS
            	20              MIA               JOHNSON

5.)SELECT * FROM EMPLOYEES1 WHERE EMPLOYEE_ID IN (4,5,6);

OUTPUT:-

  EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             4 		EMILY          WILLIAMS
             5 		DANIEL         BROWN        05-09-22            48000
             6 		LAURA          DAVIS           20-04-23         52000

=============================BETWEEN OPERATOR=============================

1.)SELECT * FROM EMPLOYEES1 WHERE SALARY BETWEEN 50000 AND 60000;

OUTPUT:-

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	1 	JOHN          DOE          01-07-22         60000
             	2 	JANE          SMITH                         55000
             	6 	LAURA         DAVIS        20-04-23         52000
             	7 	MATTHEW       WILSON       10-12-21         54000
             	9 	OLIVIA        JOHNS        30-05-23         59000
            	10 	NOAH          SMITH        08-08-22         54000
            	13 	SOPHIA        DAVIS        18-02-23         57000
            	15 	OLIVER        MILLER       12-10-22         51000
            	17 	BENJEMIN      DAVIS        02-12-21         53000
            	19 	LUCAS         BROWN        22-06-22         56000


2.)SELECT * FROM EMPLOYEES1 WHERE HIRE_DATE BETWEEN '01-JAN-2022' AND '31-DEC-2022';

OUTPUT:-

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	1 	JOHN          DOE          01-07-22         60000
             	5 	DANIEL        BROWN        05-09-22         48000
            	10 	NOAH          SMITH        08-08-22         54000
            	15 	OLIVER        MILLER       12-10-22         51000
            	19 	LUCAS         BROWN        22-06-22         56000

3.)SELECT * FROM EMPLOYEES1 WHERE EMPLOYEE_ID BETWEEN 101 AND 110;

OUTPUT:-

no rows selected

4.)SELECT * FROM EMPLOYEES1 WHERE HIRE_DATE BETWEEN '01-JAN-2022' AND '31-DEC-2022';

OUTPUT:-

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	1 	JOHN          DOE          01-07-22         60000
             	5 	DANIEL        BROWN        05-09-22         48000
            	10 	NOAH          SMITH        08-08-22         54000
            	15 	OLIVER        MILLER       12-10-22         51000
            	19 	LUCAS         BROWN        22-06-22         56000

5.)SELECT * FROM EMPLOYEES1 WHERE SALARY BETWEEN 45000 AND 55000;

OUTPUT:-

  EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	2 	JANE          SMITH                         55000
             	5 	DANIEL        BROWN        05-09-22         48000
             	6 	LAURA         DAVIS        20-04-23         52000
             	7 	MATTHEW       WILSON       10-12-21         54000
            	10 	NOAH          SMITH        08-08-22         54000 
            	11 	WILLIAM       JOHNSON      25-06-21         45000
            	15 	OLIVER        MILLER       12-10-22         51000
            	17 	BENJEMIN      DAVIS        02-12-21         53000

=============================IS NULL QUERIES:=============================

1.) SELECT * FROM EMPLOYEES1 WHERE HIRE_DATE IS NULL;

OUTPUT:-

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________ 
             	2 	JANE          SMITH                   55000
             	4 	EMILY         WILLIAMS
             	8 	EMMA          BROWN
            	12 	AVA           WILLIAMS
            	14 	JAMES         WILSON
            	16 	AMELIA        BROWN
            	20 	MIA           JOHNSON

2.)SELECT * FROM EMPLOYEES1 WHERE SALARY IS NULL;

OUTPUT:-

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	3 	MICHAEL       JOHNSON      15-03-23
             	4 	EMILY         WILLIAMS
             	8	EMMA          BROWN
            	12 	AVA           WILLIAMS
            	14 	JAMES         WILSON
            	16 	AMELIA        BROWN
            	18 	ELIJHA        WILSON       09-03-23
            	20 	MIA           JOHNSON

3.)SELECT * FROM EMPLOYEES1 WHERE FIRST_NAME IS NULL;

OUTPUT:-

no rows selected

4.)SELECT * FROM EMPLOYEES WHERE LAST_NAME IS NULL;

OUTPUT:-

no rows selected

5.)SELECT * FROM EMPLOYEES1 WHERE EMPLOYEE_ID IS NULL;

OUTPUT:-

no rows selected

============================LOGICAL OPERATOR============================

1.)SELECT * FROM EMPLOYEES1 WHERE SALARY IS NAN;
 
OUTPUT:-

no rows selected

2.)SELECT * FROM EMPLOYEES1 WHERE SALARY IS INFINITE;

OUTPUT:-

no rows selected

3.)SELECT * FROM EMPLOYEES1 WHERE HIRE_DATE IS NOT NULL;

OUTPUT:-

  EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	1 	JOHN          DOE          01-07-22         60000
             	3 	MICHAEL       JOHNSON      15-03-23
             	5 	DANIEL        BROWN        05-09-22         48000
             	6 	LAURA         DAVIS        20-04-23         52000
             	7 	MATTHEW       WILSON       10-12-21         54000
             	9 	OLIVIA        JOHNS        30-05-23         59000
            	10 	NOAH          SMITH        08-08-22         54000
            	11 	WILLIAM       JOHNSON      25-06-21         45000
            	13 	SOPHIA        DAVIS        18-02-23         57000
            	15 	OLIVER        MILLER       12-10-22         51000
            	17 	BENJEMIN      DAVIS        02-12-21         53000
            	18 	ELIJHA        WILSON       09-03-23
            	19 	LUCAS         BROWN        22-06-22         56000

4.)SELECT * FROM EMPLOYEES1 WHERE SALARY IS NOT NAN;

OUTPUT:-

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	1 	JOHN          DOE          01-07-22         60000
             	2 	JANE          SMITH                         55000
             	5 	DANIEL        BROWN        05-09-22         48000
             	6 	LAURA         DAVIS        20-04-23         52000 
             	7 	MATTHEW       WILSON       10-12-21         54000
             	9 	OLIVIA        JOHNS        30-05-23         59000
            	10 	NOAH          SMITH        08-08-22         54000
            	11 	WILLIAM       JOHNSON      25-06-21         45000
            	13 	SOPHIA        DAVIS        18-02-23         57000
            	15 	OLIVER        MILLER       12-10-22         51000
            	17 	BENJEMIN      DAVIS        02-12-21         53000
            	19 	LUCAS         BROWN        22-06-22         56000

5.)SELECT * FROM EMPLOYEES1 WHERE SALARY IS NOT INFINITE;

OUTPUT:-

  EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	1 	JOHN          DOE          01-07-22         60000
             	2 	JANE          SMITH                         55000
             	5 	DANIEL        BROWN        05-09-22         48000
            	6 	LAURA         DAVIS        20-04-23         52000
             	7 	MATTHEW       WILSON       10-12-21         54000
             	9 	OLIVIA        JOHNS        30-05-23         59000
            	10 	NOAH          SMITH        08-08-22         54000
            	11 	WILLIAM       JOHNSON      25-06-21         45000
            	13 	SOPHIA        DAVIS        18-02-23         57000
            	15 	OLIVER        MILLER       12-10-22         51000
           	17 	BENJEMIN      DAVIS        02-12-21         53000
            	19 	LUCAS         BROWN        22-06-22         56000


===========================NOT LIKE OPERATOR===========================

1.)SELECT * FROM EMPLOYEES1 WHERE LAST_NAME NOT LIKE '%SON';

OUTPUT:-

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	1 	JOHN          DOE          01-07-22         60000
             	2 	JANE          SMITH                         55000
             	4 	EMILY         WILLIAMS
             	5 	DANIEL        BROWN        05-09-22         48000
             	6 	LAURA         DAVIS        20-04-23         52000
             	8 	EMMA          BROWN
             	9 	OLIVIA        JOHNS        30-05-23         59000
            	10 	NOAH          SMITH        08-08-22         54000
           	12 	AVA           WILLIAMS
            	13 	SOPHIA        DAVIS        18-02-23         57000
            	15 	OLIVER        MILLER       12-10-22         51000
            	16 	AMELIA        BROWN
            	17 	BENJEMIN      DAVIS        02-12-21         53000
            	19 	LUCAS         BROWN        22-06-22         56000


2.)SELECT * FROM EMPLOYEES1 WHERE FIRST_NAME NOT LIKE'%A';

OUTPUT:-

  EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	1 	JOHN          DOE          01-07-22         60000 
             	2 	JANE          SMITH                         55000
             	3 	MICHAEL       JOHNSON      15-03-23
             	4 	EMILY         WILLIAMS
             	5 	DANIEL        BROWN        05-09-22         48000
             	7 	MATTHEW       WILSON       10-12-21         54000
            	10 	NOAH          SMITH        08-08-22         54000
            	11 	WILLIAM       JOHNSON      25-06-21         45000
            	14 	JAMES         WILSON
            	15 	OLIVER        MILLER       12-10-22         51000
            	17 	BENJEMIN      DAVIS        02-12-21         53000
            	19 	LUCAS         BROWN        22-06-22         56000


3.)SELECT * FROM EMPLOYEES1 WHERE LAST_NAME NOT LIKE 'SM%';

OUTPUT:-

  EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	1 	JOHN          DOE          01-07-22         60000
             	3 	MICHAEL       JOHNSON      15-03-23
             	4 	EMILY         WILLIAMS
             	5 	DANIEL        BROWN        05-09-22         48000
             	6 	LAURA         DAVIS        20-04-23         52000
             	7 	MATTHEW       WILSON       10-12-21         54000
             	8 	EMMA          BROWN
             	9 	OLIVIA        JOHNS        30-05-23         59000
            	11 	WILLIAM       JOHNSON      25-06-21         45000
            	12 	AVA           WILLIAMS
            	13 	SOPHIA        DAVIS        18-02-23         57000
            	14 	JAMES         WILSON
            	15 	OLIVER        MILLER       12-10-22         51000
            	16 	AMELIA        BROWN

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
            	17 	BENJEMIN      DAVIS        02-12-21         53000
            	18 	ELIJHA        WILSON       09-03-23
            	19 	LUCAS         BROWN        22-06-22         56000
            	20 	MIA           JOHNSON

4.)SELECT * FROM EMPLOYEES1 WHERE FIRST_NAME NOT LIKE '%E%';

OUTPUT:-

  EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	1 	JOHN          DOE          01-07-22         60000
             	6 	LAURA         DAVIS        20-04-23         52000
             	9 	OLIVIA        JOHNS        30-05-23         59000
            	10 	NOAH          SMITH        08-08-22         54000
            	11 	WILLIAM       JOHNSON      25-06-21         45000
            	12	AVA           WILLIAMS
            	13 	SOPHIA        DAVIS        18-02-23         57000
            	19 	LUCAS         BROWN        22-06-22         56000
            	20 	MIA           JOHNSON


5.)SELECT * FROM EMPLOYEES1 WHERE LAST_NAME NOT LIKE 'BROWN';

OUTPUT:-

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	1 	JOHN          DOE          01-07-22         60000
             	2 	JANE          SMITH                         55000
             	3 	MICHAEL       JOHNSON      15-03-23
             	4 	EMILY         WILLIAMS
             	6 	LAURA         DAVIS        20-04-23         52000
             	7 	MATTHEW       WILSON       10-12-21         54000 
             	9 	OLIVIA        JOHNS        30-05-23         59000
            	10 	NOAH          SMITH        08-08-22         54000
            	11 	WILLIAM       JOHNSON      25-06-21         45000
            	12 	AVA           WILLIAMS
            	13 	SOPHIA        DAVIS        18-02-23         57000
            	14 	JAMES         WILSON
            	15 	OLIVER        MILLER       12-10-22         51000
            	17 	BENJEMIN      DAVIS        02-12-21         53000

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
            	18 	ELIJHA        WILSON       09-03-23
            	20 	MIA           JOHNSON

===============================NOT IN OPERATOR===============================

1.)SELECT * FROM EMPLOYEES1 WHERE EMPLOYEE_ID NOT BETWEEN 1 AND 10;

OUTPUT:-

 EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY 
______________ _____________ ____________ ____________ _________
            	11 	WILLIAM       JOHNSON      25-06-21         45000
            	12 	AVA           WILLIAMS
            	13 		SOPHIA        DAVIS    18-02-23         57000
            	14 	JAMES         WILSON
            	15 	OLIVER        MILLER       12-10-22         51000
            	16 	AMELIA        BROWN
            	17 	BENJEMIN      DAVIS        02-12-21         53000
            	18 	ELIJHA        WILSON       09-03-23
            	19 	LUCAS         BROWN        22-06-22         56000
            	20 	MIA           JOHNSON


2.)SELECT * FROM EMPLOYEES1 WHERE FIRST_NAME NOT IN ('JOHN', 'JANE', 'MICHAEL');

OUTPUT:-

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	4 	EMILY         WILLIAMS
             	5 	DANIEL        BROWN        05-09-22         48000
             	6 	LAURA         DAVIS        20-04-23         52000
             	7 	MATTHEW       WILSON       10-12-21         54000
             	8 	EMMA          BROWN
             	9 	OLIVIA        JOHNS        30-05-23         59000
            	10 	NOAH          SMITH        08-08-22         54000
            	11 	WILLIAM       JOHNSON      25-06-21         45000
            	12 	AVA           WILLIAMS
            	13 	SOPHIA        DAVIS        18-02-23         57000
            	14 	JAMES         WILSON
            	15 	OLIVER        MILLER       12-10-22         51000
            	16 	AMELIA        BROWN
            	17 	BENJEMIN      DAVIS        02-12-21         53000

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
            	18 	ELIJHA        WILSON       09-03-23
            	19 	LUCAS         BROWN        22-06-22         56000
            	20 	MIA           JOHNSON

3.)SELECT * FROM EMPLOYEES1 WHERE SALARY NOT IN (50000, 55000, 60000);

OUTPUT:-

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	5 	DANIEL        BROWN        05-09-22         48000
             	6 	LAURA         DAVIS        20-04-23         52000
             	7 	MATTHEW       WILSON       10-12-21         54000
             	9 	OLIVIA        JOHNS        30-05-23         59000
            	10 	NOAH          SMITH        08-08-22         54000
            	11 	WILLIAM       JOHNSON      25-06-21         45000
            	13 	SOPHIA        DAVIS        18-02-23         57000
            	15 	OLIVER        MILLER       12-10-22         51000
            	17 	BENJEMIN      DAVIS        02-12-21         53000
            	19 	LUCAS         BROWN        22-06-22         56000

4.)SELECT * FROM EMPLOYEES1 WHERE LAST_NAME NOT IN ('SMITH', 'JOHNSON', 'WILLIAMS');

OUTPUT:-

 EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY 
______________ _____________ ____________ ____________ _________
             	1 	JOHN          DOE          01-07-22         60000
             	5 	DANIEL        BROWN        05-09-22         48000
             	6 	LAURA         DAVIS        20-04-23         52000
             	7 	MATTHEW       WILSON       10-12-21         54000
             	8 	EMMA          BROWN
             	9 	OLIVIA        JOHNS        30-05-23         59000
            	13 	SOPHIA        DAVIS        18-02-23         57000
            	14 	JAMES         WILSON
            	15 	OLIVER        MILLER       12-10-22         51000
            	16 	AMELIA        BROWN
            	17 	BENJEMIN      DAVIS        02-12-21         53000
            	18 	ELIJHA        WILSON       09-03-23
            	19 	LUCAS         BROWN        22-06-22         56000

5.)SELECT * FROM EMPLOYEES1 WHERE EMPLOYEE_ID NOT IN (4,5,6);

OUTPUT:-

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________ 
             	1 	JOHN          DOE          01-07-22         60000
             	2 	JANE          SMITH                         55000
             	3 	MICHAEL       JOHNSON      15-03-23
             	7 	MATTHEW       WILSON       10-12-21         54000
             	8 	EMMA          BROWN
             	9 	OLIVIA        JOHNS        30-05-23         59000
            	10 	NOAH          SMITH        08-08-22         54000
            	11 	WILLIAM       JOHNSON      25-06-21         45000
            	12 	AVA           WILLIAMS
            	13 	SOPHIA        DAVIS        18-02-23         57000
            	14	JAMES         WILSON
            	15 	OLIVER        MILLER       12-10-22         51000
            	16 	AMELIA        BROWN
            	17 	BENJEMIN      DAVIS        02-12-21         53000

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
            	18 	ELIJHA        WILSON       09-03-23
            	19 	LUCAS         BROWN        22-06-22         56000
            	20 	MIA           JOHNSON

===============================NOT BETWEEN OPERATOR===============================

1.)SELECT * FROM EMPLOYEES1 WHERE SALARY NOT BETWEEN 50000 AND 60000;

OUTPUT:-

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	5 	DANIEL        BROWN        05-09-22         48000
            	11 	WILLIAM       JOHNSON      25-06-21         45000

2.)SELECT * FROM EMPLOYEES1 WHERE HIRE_DATE NOT BETWEEN '01-JAN-2022' AND '31-DEC-2022';

OUTPUT:-

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	3 	MICHAEL       JOHNSON      15-03-23
             	6 	LAURA         DAVIS        20-04-23         52000
             	7 	MATTHEW       WILSON       10-12-21         54000
             	9 	OLIVIA        JOHNS        30-05-23         59000
            	11 	WILLIAM       JOHNSON      25-06-21         45000
            	13 	SOPHIA        DAVIS        18-02-23         57000
            	17 	BENJEMIN      DAVIS        02-12-21         53000
            	18	ELIJHA        WILSON       09-03-23


3.)SELECT * FROM EMPLOYEES1 WHERE EMPLOYEE_ID NOT BETWEEN 1 AND 10;

OUTPUT:-

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY 
______________ _____________ ____________ ____________ _________
            	11 	WILLIAM       JOHNSON      25-06-21         45000
            	12 	AVA           WILLIAMS
            	13 	SOPHIA        DAVIS        18-02-23         57000
            	14 	JAMES         WILSON
            	15 	OLIVER        MILLER       12-10-22         51000
            	16 	AMELIA        BROWN
            	17 	BENJEMIN      DAVIS        02-12-21         53000
            	18 	ELIJHA        WILSON       09-03-23
            	19 	LUCAS         BROWN        22-06-22         56000
            	20	MIA           JOHNSON

4.)SELECT * FROM EMPLOYEES1 WHERE HIRE_DATE NOT BETWEEN '01-JAN-2022' AND '31-DEC-2022';

OUTPUT:-

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	3 	MICHAEL       JOHNSON      15-03-23
             	6 	LAURA         DAVIS        20-04-23         52000
             	7 	MATTHEW       WILSON       10-12-21         54000
             	9 	OLIVIA        JOHNS        30-05-23         59000
            	11 	WILLIAM       JOHNSON      25-06-21         45000
            	13 	SOPHIA        DAVIS        18-02-23         57000
            	17 	BENJEMIN      DAVIS        02-12-21         53000
            	18 	ELIJHA        WILSON       09-03-23


5.)SELECT * FROM EMPLOYEES1 WHERE SALARY NOT BETWEEN 45000 AND 55000;

OUTPUT:-

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY 
______________ _____________ ____________ ____________ _________
             	1 	JOHN          DOE          01-07-22         60000
             	9 	OLIVIA        JOHNS        30-05-23         59000
            	13 	SOPHIA        DAVIS        18-02-23         57000
            	19 	LUCAS         BROWN        22-06-22         56000

==============================IS NOT NULL OPERATOR==============================

1.)SELECT * FROM EMPLOYEES1 WHERE HIRE_DATE IS NOT NULL;

OUTPUT:-

  EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             1 JOHN          DOE          01-07-22         60000
             3 MICHAEL       JOHNSON      15-03-23
             5 DANIEL        BROWN        05-09-22         48000
             6 LAURA         DAVIS        20-04-23         52000
             7 MATTHEW       WILSON       10-12-21         54000
             9 OLIVIA        JOHNS        30-05-23         59000
            10 NOAH          SMITH        08-08-22         54000
            11 WILLIAM       JOHNSON      25-06-21         45000
            13 SOPHIA        DAVIS        18-02-23         57000
            15 OLIVER        MILLER       12-10-22         51000
            17 BENJEMIN      DAVIS        02-12-21         53000
            18 ELIJHA        WILSON       09-03-23
            19 LUCAS         BROWN        22-06-22         56000


2.)SELECT * FROM EMPLOYEES1 WHERE SALARY IS NOT NULL;

OUTPUT:-

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	1 	JOHN          DOE          01-07-22         60000
             	2 	JANE          SMITH                         55000
             	5 	DANIEL        BROWN        05-09-22         48000
             	6 	LAURA         DAVIS        20-04-23         52000
             	7 	MATTHEW       WILSON       10-12-21         54000
             	9 	OLIVIA        JOHNS        30-05-23         59000
            	10 	NOAH          SMITH        08-08-22         54000
            	11 	WILLIAM       JOHNSON      25-06-21         45000
            	13 	SOPHIA        DAVIS        18-02-23         57000
            	15 	OLIVER        MILLER       12-10-22         51000
            	17 	BENJEMIN      DAVIS        02-12-21         53000
            	19 	LUCAS         BROWN        22-06-22         56000


3.)SELECT * FROM EMPLOYEES1 WHERE FIRST_NAME IS NOT NULL;

OUTPUT:-


   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	1 	JOHN          DOE          01-07-22         60000
             	2 	JANE          SMITH                         55000
             	3 	MICHAEL       JOHNSON      15-03-23
             	4 	EMILY         WILLIAMS
             	5 	DANIEL        BROWN        05-09-22         48000
             	6 	LAURA         DAVIS        20-04-23         52000
             	7 	MATTHEW       WILSON       10-12-21         54000 
             	8 	EMMA          BROWN
             	9 	OLIVIA        JOHNS        30-05-23         59000
            	10 	NOAH          SMITH        08-08-22         54000
            	11 	WILLIAM       JOHNSON      25-06-21         45000
            	12 	AVA           WILLIAMS
            	13 	SOPHIA        DAVIS        18-02-23         57000
            	14 	JAMES         WILSON

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
            	15 	OLIVER        MILLER       12-10-22         51000
            	16 	AMELIA        BROWN
            	17 	BENJEMIN      DAVIS        02-12-21         53000
            	18 	ELIJHA        WILSON       09-03-23
            	19 	LUCAS         BROWN        22-06-22         56000
            	20 	MIA           JOHNSON

4.)SELECT * FROM EMPLOYEES1 WHERE LAST_NAME IS NOT NULL;

OUTPUT:-

 EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	1 	JOHN          DOE          01-07-22         60000
             	2 	JANE          SMITH                         55000
             	3 	MICHAEL       JOHNSON      15-03-23
             	4 	EMILY         WILLIAMS
             	5 	DANIEL        BROWN        05-09-22         48000
             	6 	LAURA         DAVIS        20-04-23         52000
             	7 	MATTHEW       WILSON       10-12-21         54000
             	8 	EMMA          BROWN
             	9 	OLIVIA        JOHNS        30-05-23         59000
            	10 	NOAH          SMITH        08-08-22         54000
            	11 	WILLIAM       JOHNSON      25-06-21         45000
            	12 	AVA           WILLIAMS
            	13 	SOPHIA        DAVIS        18-02-23         57000
            	14 	JAMES         WILSON

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
            	15 	OLIVER        MILLER       12-10-22         51000
            	16 	AMELIA        BROWN
            	17 	BENJEMIN      DAVIS        02-12-21         53000
            	18 	ELIJHA        WILSON       09-03-23
            	19 	LUCAS         BROWN        22-06-22         56000
            	20 	MIA           JOHNSON


5.)SELECT * FROM EMPLOYEES1 WHERE EMPLOYEE_ID IS NOT NULL;

OUTPUT:-

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	1 	JOHN          DOE          01-07-22         60000
             	2 	JANE          SMITH                         55000
             	3 	MICHAEL       JOHNSON      15-03-23
             	4 	EMILY         WILLIAMS
             	5 	DANIEL        BROWN        05-09-22         48000
             	6 	LAURA         DAVIS        20-04-23         52000 
             	7	MATTHEW       WILSON       10-12-21         54000
             	8 	EMMA          BROWN
            	9 	OLIVIA        JOHNS        30-05-23         59000
            	10 	NOAH          SMITH        08-08-22         54000
            	11 	WILLIAM       JOHNSON      25-06-21         45000
            	12 	AVA           WILLIAMS
            	13 	SOPHIA        DAVIS        18-02-23         57000
            	14 	JAMES         WILSON

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
            	15 	OLIVER        MILLER       12-10-22         51000
            	16 	AMELIA        BROWN
            	17 	BENJEMIN      DAVIS        02-12-21         53000
            	18 	ELIJHA        WILSON       09-03-23
            	19 	LUCAS         BROWN        22-06-22         56000
            	20 	MIA           JOHNSON

==============================IS NOT NAN OPERATOR==============================

1.)SELECT * FROM EMPLOYEES1 WHERE SALARY IS NOT NAN;

OUTPUT:-

 EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	1 	JOHN          DOE          01-07-22         60000
             	2 	JANE          SMITH                         55000
             	5 	DANIEL        BROWN        05-09-22         48000
             	6 	LAURA         DAVIS        20-04-23         52000
             	7 	MATTHEW       WILSON       10-12-21         54000
             	9 	OLIVIA        JOHNS        30-05-23         59000
            	10 	NOAH          SMITH        08-08-22         54000
            	11 	WILLIAM       JOHNSON      25-06-21         45000
            	13 	SOPHIA        DAVIS        18-02-23         57000
            	15 	OLIVER        MILLER       12-10-22         51000
            	17 	BENJEMIN      DAVIS        02-12-21         53000
            	19 	LUCAS         BROWN        22-06-22         56000

2.)SELECT * FROM EMPLOYEES1 WHERE SALARY IS NOT NAN;

OUTPUT:-

 EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	1 	JOHN          DOE          01-07-22         60000
             	2 	JANE          SMITH                         55000
             	5 	DANIEL        BROWN        05-09-22         48000
             	6 	LAURA         DAVIS        20-04-23         52000
             	7 	MATTHEW       WILSON       10-12-21         54000
             	9 	OLIVIA        JOHNS        30-05-23         59000
            	10 	NOAH          SMITH        08-08-22         54000
            	11 	WILLIAM       JOHNSON      25-06-21         45000
            	13 	SOPHIA        DAVIS        18-02-23         57000
            	15 	OLIVER        MILLER       12-10-22         51000
            	17 	BENJEMIN      DAVIS        02-12-21         53000
            	19 	LUCAS         BROWN        22-06-22         56000

3.)SELECT * FROM EMPLOYEES1 WHERE FIRST_NAME IS NOT NULL;

OUTPUT:-

EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	1 	JOHN          DOE          01-07-22         60000
             	2 	JANE          SMITH                         55000
             	3 	MICHAEL       JOHNSON      15-03-23
             	4 	EMILY         WILLIAMS
             	5 	DANIEL        BROWN        05-09-22         48000
             	6 	LAURA         DAVIS        20-04-23         52000
             	7 	MATTHEW       WILSON       10-12-21         54000
             	8 	EMMA          BROWN
             	9 	OLIVIA        JOHNS        30-05-23         59000
            	10 	NOAH          SMITH        08-08-22         54000
            	11 	WILLIAM       JOHNSON      25-06-21         45000
            	12 	AVA           WILLIAMS
            	13 	SOPHIA        DAVIS        18-02-23         57000
            	14 	JAMES         WILSON

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
            	15 	OLIVER        MILLER       12-10-22         51000
            	16 	AMELIA        BROWN
            	17 	BENJEMIN      DAVIS        02-12-21         53000 
            	18 	ELIJHA        WILSON       09-03-23
            	19 	LUCAS         BROWN        22-06-22         56000
            	20 	MIA           JOHNSON


4.)SELECT * FROM EMPLOYEES1 WHERE LAST_NAME IS NOT NULL;

OUTPUT:-

 EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY 
______________ _____________ ____________ ____________ _________
             	1	JOHN          DOE          01-07-22         60000
             	2 	JANE          SMITH                         55000
             	3 	MICHAEL       JOHNSON      15-03-23
             	4 	EMILY         WILLIAMS
             	5 	DANIEL        BROWN        05-09-22         48000
             	6 	LAURA         DAVIS        20-04-23         52000
             	7 	MATTHEW       WILSON       10-12-21         54000
             	8 	EMMA          BROWN
             	9 	OLIVIA        JOHNS        30-05-23         59000
            	10 	NOAH          SMITH        08-08-22         54000
            	11 	WILLIAM       JOHNSON      25-06-21         45000
            	12 	AVA           WILLIAMS
            	13 	SOPHIA        DAVIS        18-02-23         57000
            	14 	JAMES         WILSON

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY 
______________ _____________ ____________ ____________ _________
            	15 	OLIVER        MILLER       12-10-22         51000
            	16 	AMELIA        BROWN
            	17 	BENJEMIN      DAVIS        02-12-21         53000
            	18 	ELIJHA        WILSON       09-03-23
            	19 	LUCAS         BROWN        22-06-22         56000
            	20	MIA           JOHNSON

5.)SELECT * FROM EMPLOYEES1 WHERE EMPLOYEE_ID IS NOT NAN;

OUTPUT:-

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY 
______________ _____________ ____________ ____________ _________
             	1 	JOHN          DOE          01-07-22         60000
             	2 	JANE          SMITH                         55000
             	3 	MICHAEL       JOHNSON      15-03-23
             	4 	EMILY         WILLIAMS
             	5 	DANIEL        BROWN        05-09-22         48000
             	6 	LAURA         DAVIS        20-04-23         52000
             	7 	MATTHEW       WILSON       10-12-21         54000
             	8 	EMMA          BROWN
             	9 	OLIVIA        JOHNS        30-05-23         59000
            	10 	NOAH          SMITH        08-08-22         54000
            	11 	WILLIAM       JOHNSON      25-06-21         45000
            	12 	AVA           WILLIAMS
            	13 	SOPHIA        DAVIS        18-02-23         57000
            	14 	JAMES         WILSON

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
            	15 	OLIVER        MILLER       12-10-22         51000
            	16 	AMELIA        BROWN
            	17 	BENJEMIN      DAVIS        02-12-21         53000
            	18 	ELIJHA        WILSON       09-03-23
            	19 	LUCAS         BROWN        22-06-22         56000
            	20 	MIA           JOHNSON

==============================IS NOT INFINITE OPERATORS==============================

1.)SELECT * FROM EMPLOYEES1 WHERE SALARY IS NOT INFINITE;

OUTPUT:-

  EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	1 	JOHN          DOE          01-07-22         60000
             	2 	JANE          SMITH                         55000
             	5 	DANIEL        BROWN        05-09-22         48000
            	6 	LAURA         DAVIS        20-04-23         52000
             	7 	MATTHEW       WILSON       10-12-21         54000
             	9 	OLIVIA        JOHNS        30-05-23         59000
            	10 	NOAH          SMITH        08-08-22         54000
            	11 	WILLIAM       JOHNSON      25-06-21         45000
            	13 	SOPHIA        DAVIS        18-02-23         57000
            	15 	OLIVER        MILLER       12-10-22         51000
            	17 	BENJEMIN      DAVIS        02-12-21         53000
            	19 	LUCAS         BROWN        22-06-22         56000

2.)SELECT * FROM EMPLOYEES1 WHERE SALARY IS NOT INFINITE;

OUTPUT:-

  EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             	1 	JOHN          DOE          01-07-22         60000
             	2 	JANE          SMITH                         55000
             	5 	DANIEL        BROWN        05-09-22         48000
             	6 	LAURA         DAVIS        20-04-23         52000
             	7	MATTHEW       WILSON       10-12-21         54000
             	9 	OLIVIA        JOHNS        30-05-23         59000
            	10 	NOAH          SMITH        08-08-22         54000
            	11 	WILLIAM       JOHNSON      25-06-21         45000
           	    13  SOPHIA        DAVIS        18-02-23         57000
            	15 	OLIVER        MILLER       12-10-22         51000
            	17 	BENJEMIN      DAVIS        02-12-21         53000
            	19 	LUCAS         BROWN        22-06-22         56000

3.)SELECT * FROM EMPLOYEES1 WHERE HIRE_DATE IS NOT NULL;

OUTPUT:-

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY 
______________ _____________ ____________ ____________ _________
             1  	JOHN         DOE           01-07-22    60000
             3		MICHAEL      JOHNSON       15-03-23
             5 		DANIEL       BROWN         05-09-22    48000
             6 		LAURA        DAVIS         20-04-23    52000
             7		MATTHEW      WILSON        10-12-21    54000
             9 		OLIVIA       JOHNS         30-05-23    59000
            10		NOAH         SMITH         08-08-22    54000
            11 		WILLIAM      JOHNSON       25-06-21    45000
            13		SOPHIA       DAVIS         18-02-23    57000
            15		OLIVER       MILLER        12-10-22    51000
            17 		BENJEMIN     DAVIS         02-12-21    53000
            18 		ELIJHA       WILSON        09-03-23
            19 		LUCAS        BROWN         22-06-22    56000

4.)SELECT * FROM EMPLOYEES1 WHERE FIRST_NAME IS NOT NULL;

OUTPUT:-

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY 
______________ _____________ ____________ ____________ _________ 
             1    JOHN          DOE         01-07-22       60000 
             2    JANE          SMITH                      55000 
             3    MICHAEL       JOHNSON     15-03-23
             4    EMILY         WILLIAMS
             5    DANIEL        BROWN       05-09-22       48000
             6    LAURA         DAVIS       20-04-23       52000
             7    MATTHEW       WILSON      10-12-21       54000
             8    EMMA          BROWN
             9    OLIVIA        JOHNS       30-05-23       59000
            10    NOAH          SMITH       08-08-22       54000
            11    WILLIAM       JOHNSON     25-06-21       45000
            12    AVA           WILLIAMS
            13    SOPHIA        DAVIS       18-02-23       57000
            14    JAMES         WILSON

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY 
______________ _____________ ____________ ____________ _________
            15   OLIVER         MILLER      12-10-22       51000
            16   AMELIA         BROWN
            17   BENJEMIN       DAVIS       02-12-21       53000
            18   ELIJHA         WILSON      09-03-23
            19   LUCAS          BROWN       22-06-22       56000
            20   MIA            JOHNSON


5.)SELECT * FROM EMPLOYEES1 WHERE EMPLOYEE_ID IS NOT INFINITE;

OUTPUT:-

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
             1    JOHN          DOE          01-07-22         60000
             2    JANE          SMITH                         55000
             3    MICHAEL       JOHNSON      15-03-23
             4    EMILY         WILLIAMS
             5    DANIEL        BROWN        05-09-22         48000
             6    LAURA         DAVIS        20-04-23         52000
             7    MATTHEW       WILSON       10-12-21         54000
             8    EMMA          BROWN
             9    OLIVIA        JOHNS        30-05-23         59000
            10    NOAH          SMITH        08-08-22         54000
            11    WILLIAM       JOHNSON      25-06-21         45000
            12    AVA           WILLIAMS
            13    SOPHIA        DAVIS        18-02-23         57000
            14    JAMES         WILSON

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
            15    OLIVER        MILLER       12-10-22         51000
            16    AMELIA        BROWN
            17    BENJEMIN      DAVIS        02-12-21         53000
            18    ELIJHA        WILSON       09-03-23
            19    LUCAS         BROWN        22-06-22         56000
            20    MIA           JOHNSON

============================LOGICAL OPERATOR============================

1.)SELECT * FROM EMPLOYEES1 WHERE SALARY > 50000 AND HIRE_DATE >'01-JAN-2022';

OUTPUT:

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY 
______________ _____________ ____________ ____________ _________
             1    JOHN          DOE          01-07-22         60000
             6    LAURA         DAVIS        20-04-23         52000
             9    OLIVIA        JOHNS        30-05-23         59000
            10    NOAH          SMITH        08-08-22         54000
            13    SOPHIA        DAVIS        18-02-23         57000
            15    OLIVER        MILLER       12-10-22         51000
            19    LUCAS         BROWN        22-06-22         56000

2.)SELECT * FROM EMPLOYEES1 WHERE SALARY > 60000 AND HIRE_DATE <'01-JAN-2021';

OUTPUT:-

no rows selected

3.)SELECT * FROM EMPLOYEES1 WHERE SALARY > 50000 AND LAST_NAME LIKE 'S%';

OUTPUT:-

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
         2         JANE          SMITH                     55000
        10         NOAH          SMITH        08-08-22     54000

4.)SELECT * FROM EMPLOYEES1 WHERE HIRE_DATE IS NULL OR SALARY < 40000;

OUTPUT:-

  EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
          2        JANE         SMITH                      55000
          4        EMILY        WILLIAMS
          8        EMMA         BROWN
          12       AVA          WILLIAMS
          14       JAMES        WILSON
          16       AMELIA       BROWN
          20       MIA          JOHNSON

5.)SELECT * FROM EMPLOYEES1 WHERE SALARY > 55000 AND FIRST_NAME NOT LIKE 'JANE';

OUTPUT:

   EMPLOYEE_ID    FIRST_NAME    LAST_NAME    HIRE_DATE    SALARY
______________ _____________ ____________ ____________ _________
            1 	   JOHN         DOE          01-07-22      60000
            9      OLIVIA       JOHNS        30-05-23      59000
           13      SOPHIA       DAVIS        18-02-23      57000
           19      LUCAS        BROWN        22-06-22      56000

================================TABLE ALIASING==============================

1.)SELECT FIRST_NAME || ' ' || LAST_NAME AS NAME FROM EMPLOYEES1;

OUTPUT:-

              NAME
__________________
JOHN DOE
JANE SMITH
MICHAEL JOHNSON
EMILY WILLIAMS
DANIEL BROWN
LAURA DAVIS
MATTHEW WILSON
EMMA BROWN
OLIVIA JOHNS
NOAH SMITH
WILLIAM JOHNSON
AVA WILLIAMS
SOPHIA DAVIS
JAMES WILSON

             NAME
_________________
OLIVER MILLER
AMELIA BROWN
BENJEMIN DAVIS
ELIJHA WILSON
LUCAS BROWN
MIA JOHNSON


2.)SELECT HIRE_DATE || ' ' || SALARY AS EMPLOYEE_DETAIL FROM EMPLOYEES1;

OUTPUT:-

   EMPLOYEE_DETAIL
__________________
01-07-22 60000
         55000
15-03-23

05-09-22 48000
20-04-23 52000
10-12-21 54000

30-05-23 59000
08-08-22 54000
25-06-21 45000

18-02-23 57000


   EMPLOYEE_DETAIL 
__________________
12-10-22 51000

02-12-21 53000
09-03-23
22-06-22 56000


3.)SELECT EMPLOYEE_ID || ' ' || HIRE_DATE AS ID_DATE FROM EMPLOYEES1;

OUTPUT:-

    ID_DATE
______________
1 01-07-22
2
3 15-03-23
4
5 05-09-22
6 20-04-23
7 10-12-21
8
9 30-05-23
10 08-08-22
11 25-06-21
12
13 18-02-23
14

       ID_DATE
______________
15 12-10-22
16
17 02-12-21
18 09-03-23
19 22-06-22
20


4.)SELECT LAST_NAME || '  ' || SALARY AS LAST_SALARY FROM EMPLOYEES1;

OUTPUT:-

     LAST_SALARY
_________________
DOE  60000
SMITH  55000
JOHNSON
WILLIAMS
BROWN  48000
DAVIS  52000
WILSON  54000
BROWN
JOHNS  59000
SMITH  54000
JOHNSON  45000
WILLIAMS
DAVIS  57000
WILSON

     LAST_SALARY
________________
MILLER  51000
BROWN
DAVIS  53000
WILSON
BROWN  56000
JOHNSON

5.)SELECT FIRST_NAME || '  ' || HIRE_DATE AS FIRST_DATE FROM EMPLOYEES1;

OUTPUT:-

         FIRST_DATE
____________________
JOHN  01-07-22
JANE
MICHAEL  15-03-23
EMILY
DANIEL  05-09-22
LAURA  20-04-23
MATTHEW  10-12-21
EMMA
OLIVIA  30-05-23
NOAH  08-08-22
WILLIAM  25-06-21
AVA
SOPHIA  18-02-23
JAMES

           FIRST_DATE
_____________________
OLIVER  12-10-22      
AMELIA
BENJEMIN  02-12-21
ELIJHA  09-03-23
LUCAS  22-06-22
MIA

===============================COLUMN ALIASING==============================

1.)SELECT EMPLOYEE_ID AS EMPLOYEEID FROM EMPLOYEES1;

OUTPUT:-

  EMPLOYEEID
_____________
            1
            2
            3
            4
            5
            6
            7
            8
            9
           10
           11
           12
           13
           14

   EMPLOYEEID
_____________
           15
           16
           17
           18
           19
           20

2.)SELECT FIRST_NAME || '  ' || LAST_NAME AS FULL_NAME FROM EMPLOYEES1;

OUTPUT:-

          FULL_NAME
___________________
JOHN  DOE
JANE  SMITH
MICHAEL  JOHNSON
EMILY  WILLIAMS
DANIEL  BROWN
LAURA  DAVIS
MATTHEW  WILSON
EMMA  BROWN
OLIVIA  JOHNS
NOAH  SMITH
WILLIAM  JOHNSON
AVA  WILLIAMS
SOPHIA  DAVIS
JAMES  WILSON

         FULL_NAME
__________________
OLIVER  MILLER
AMELIA  BROWN
BENJEMIN  DAVIS
ELIJHA  WILSON
LUCAS  BROWN
MIA  JOHNSON

3.)SELECT HIRE_DATE AS JOIN_DATE FROM EMPLOYEES1;

OUTPUT:-

  JOIN_DATE
____________
01-07-22

15-03-23

05-09-22
20-04-23
10-12-21

30-05-23
08-08-22
25-06-21

18-02-23


   JOIN_DATE
____________
12-10-22

02-12-21
09-03-23
22-06-22

4.)SELECT SALARY AS INCOME FROM EMPLOYEES1;

OUTPUT:-

   INCOME
_________
    60000
    55000


    48000
    52000
    54000

    59000
    54000
    45000

    57000


   INCOME
_________
    51000

    53000

    56000


5.)SELECT LAST_NAME || '  ' || SALARY AS DETAIL FROM EMPLOYEES1;

OUTPUT:-

         DETAIL
_________________
DOE  60000
SMITH  55000
JOHNSON
WILLIAMS
BROWN  48000
DAVIS  52000
WILSON  54000
BROWN
JOHNS  59000
SMITH  54000
JOHNSON  45000
WILLIAMS
DAVIS  57000
WILSON

          DETAIL
________________
MILLER  51000
BROWN
DAVIS  53000
WILSON
BROWN  56000
JOHNSON
