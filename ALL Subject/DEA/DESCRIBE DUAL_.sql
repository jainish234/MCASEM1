DESCRIBE DUAL;

NAME NULL? TYPE

________ ________ ______________

DUMMY VARCHAR2(1)

SQL> SELECT * FROM DUAL;

DUMMY

________

X

SQL> SELECT 2*6 FROM DUAL;

2*6

______

12

SQL> SELECT (2+4)/2*16 FROM DUAL;

(2+4)/2*16 _____________ 48 SQL>
SELECT
    (2*5-3)/2+16
FROM
    DUAL;

(2*5-3)/2+16 _______________ 19.5 SQL>
SELECT
    TO_DATE('25-JUL-2023')
FROM
    DUAL;

TO_DATE('25-JUL-2023')

_________________________

25-07-23

SQL> SELECT TO_DATE('25-JUL-2023')+2 FROM DUAL;

TO_DATE('25-JUL-2023')+2

___________________________

27-07-23

SQL> SELECT TO_DATE('25-JUL-2023')-2 FROM DUAL;

TO_DATE('25-JUL-2023')-2

___________________________

23-07-23

SQL> SELECT TO_DATE('25-JUL-2023')*3 FROM DUAL;

ERROR STARTING AT LINE : 1 IN COMMAND -
SELECT TO_DATE('25-JUL-2023')*3 FROM DUAL

ERROR AT COMMAND LINE : 1 COLUMN : 8

ERROR REPORT -
SQL ERROR: ORA-00932: INCONSISTENT DATATYPES: EXPECTED NUMBER GOT DATE

00932. 00000 - "inconsistent datatypes: expected %s got %s"

*CAUSE:

*ACTION:

SQL> SELECT TO_DATE('25-JUL-2023')/3 FROM DUAL;

ERROR STARTING AT LINE : 1 IN COMMAND -
SELECT TO_DATE('25-JUL-2023')/3 FROM DUAL

ERROR AT COMMAND LINE : 1 COLUMN : 8

ERROR REPORT -
SQL ERROR: ORA-00932: INCONSISTENT DATATYPES: EXPECTED NUMBER GOT DATE

00932. 00000 - "inconsistent datatypes: expected %s got %s"

*CAUSE:

*ACTION:

SQL> SELECT TO_DATE('25-JUL-2023')+365;

ERROR STARTING AT LINE : 1 IN COMMAND -
SELECT TO_DATE('25-JUL-2023')+365

ERROR AT COMMAND LINE : 1 COLUMN : 33

ERROR REPORT -
SQL ERROR: ORA-00923: FROM KEYWORD NOT FOUND WHERE EXPECTED

00923. 00000 - "FROM keyword not found where expected"

*CAUSE:

*ACTION:

SQL> SELECT TO_DATE('25-JUL-2023')+365 FROM DUAL;

TO_DATE('25-JUL-2023')+365

_____________________________

24-07-24

SQL> SELECT TO_DATE('25-JUL-2023')+395 FROM DUAL;

TO_DATE('25-JUL-2023')+395

_____________________________

23-08-24

SQL> SELECT TO_DATE('15-AUG-2023') FROM DUAL;

TO_DATE('15-AUG-2023')

_________________________

15-08-23

SQL> SELECT TO_DATE('15-AUG-2023') - TO_DATE('17-AUG-2023') FROM DUAL;

TO_DATE('15-AUG-2023')-TO_DATE('17-AUG-2023')

________________________________________________

-2

SQL> SELECT TO_DATE('17-AUG-2023') - TO_DATE('8-JAN-2023') FROM DUAL;

TO_DATE('17-AUG-2023')-TO_DATE('8-JAN-2023')

_______________________________________________

221

SQL>