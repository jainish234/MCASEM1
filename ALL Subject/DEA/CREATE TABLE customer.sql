CREATE TABLE CUSTOMER(
    CUSTOMER_ID INTEGER PRIMARY KEY,
    FIRST_NAME VARCHAR(10),
    LAST_NAME VARCHAR(10),
    DOB DATE,
    MOBILE_NO VARCHAR(10)
);

INSERT INTO CUSTOMER(
    CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME,
    DOB,
    MOBILE_NO
)VALUES(
    1,
    'jeet',
    'patel',
    '01-jan-2015',
    6387928768
);

INSERT INTO CUSTOMER(
    CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME,
    DOB,
    MOBILE_NO
)VALUES(
    2,
    'jay',
    'virani',
    '02-feb-2014',
    6378654387
);

INSERT INTO CUSTOMER(
    CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME,
    DOB,
    MOBILE_NO
)VALUES(
    3,
    'harsh',
    'vaghela',
    '04-aug-2004',
    9999744446
);

INSERT INTO CUSTOMER(
    CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME,
    DOB,
    MOBILE_NO
)VALUES(
    4,
    'virat',
    'kohli',
    '05-sep-2017',
    9989745744
);

SELECT
    *
FROM
    CUSTOMER;

CUSTOMER_ID FIRST_NAME LAST_NAME DOB MOBILE_NO

______________ _____________ ____________ ___________ _____________

1 JEET PATEL 01-01-15 6387928768

2 JAY VIRANI 02-02-14 6378654387

3 HARSH VAGHELA 04-08-04 9999744446

4 VIRAT KOHLI 05-09-17 9989745744

5 DHAVAN SHIKHAR 07-10-15 740987498

CREATE TABLE PRODUCT_TYPE(
    PRODUCT_ID INTEGER CONSTRAINT PRODUCT_TYPE_PK PRIMARY KEY,
    NAME VARCHAR2(20) NOT NULL
);

INSERT INTO PRODUCT_TYPE(
    PRODUCT_ID,
    NAME
)VALUES(
    1,
    'balaji'
);

INSERT INTO PRODUCT_TYPE(
    PRODUCT_ID,
    NAME
)VALUES(
    2,
    'gopal namkin'
);

INSERT INTO PRODUCT_TYPE(
    PRODUCT_ID,
    NAME
)VALUES(
    3,
    'gokul'
);

INSERT INTO PRODUCT_TYPE(
    PRODUCT_ID,
    NAME
)VALUES(
    4,
    'avadha'
);

INSERT INTO PRODUCT_TYPE(
    PRODUCT_ID,
    NAME
)VALUES(
    5,
    'brand'
);

SELECT
    *
FROM
    PRODUCT_TYPE;

PRODUCT_ID NAME

_____________ _______________

1 BALAJI

2 GOPAL NAMKIN

3 GOKUL

4 AVADHA

5 BRAND