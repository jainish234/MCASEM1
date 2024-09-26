You are tasked with creating a database table to store information about students. The table should be named "StudentInfo" and have the following structure:

student_id (Primary Key): A unique identifier for each student.
first_name: The first name of the student.
last_name: The last name of the student.
date_of_birth: The date of birth of the student.
gender: The gender of the student (M/F/O for Male/Female/Other).
email: The email address of the student (unique).
phone_number: The phone number of the student.
Create the "StudentInfo" table with the specified columns and constraints.

CREATE TABLE StudentInfo (
    student_id INT PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    date_of_birth DATE,
    gender CHAR(1) CHECK (gender IN ('M', 'F', 'O')),
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(15)
);
table created
Additionally, insert the following 15 different students information into the table:

insert into StudentInfo VALUES ( 101,'John','Smith', '15-may-1998','M','john.smith@email.com',123-456-7890);
insert into StudentInfo VALUES ( 102,'Emily','Davis', '20-mar-1999','F','emily.davis@email.com',987-654-3210);
insert into StudentInfo VALUES ( 103,'Michael','Johnson', '10-jul-1997','M','johnson@email.com',555-123-4567);
insert into StudentInfo VALUES ( 104,'Sarah','Wilson', '05-jan-2000','F','sarah.wilson@email.com',789-987-6543);
insert into StudentInfo VALUES ( 105,'David','Brown', '30-sep-1996','M','david.brown@email.com',111-222-3333);
insert into StudentInfo VALUES ( 106,'Olivia','Lee', '18-dec-1999','F','olivia.lee@email.com',444-555-6666);
insert into StudentInfo VALUES ( 107,'Ethan','Martinez', '25-nov-1998','M','ethan.martinez@email.com',777-888-9999);
insert into StudentInfo VALUES ( 108,'Sophia','Taylor', '14-feb-2001','F','sophia.taylor@email.com',222-333-4444);
insert into StudentInfo VALUES ( 109,'Aiden',' Miller', '14-apr-1997','M','aiden.miller@email.com',666-777-8888);
insert into StudentInfo VALUES ( 110,'Emma','Anderson', '07-aug-2002','F','emma.anderson@email.com',333-444-5555);
insert into StudentInfo VALUES ( 111,'Benjamin','Harris', '22-jun-1995','M','benjamin.harris@email.com',888-999-0000);
insert into StudentInfo VALUES ( 112,'Mia','Johnson', '01-oct-1998','F','mia.johnson@email.com',999-000-1111);
insert into StudentInfo VALUES ( 113,'William','White', '12-mar-2003','M','william.white@email.com',000-111-2222);
insert into StudentInfo VALUES ( 114,'Ava','Robinson', '28-apr-1999','F','ava.robinson@email.com',111-222-3333);
insert into StudentInfo VALUES ( 115,'James','Turner', '05-dec-1996','M','james.turner@email.com',222-333-4444);

SELECT * FROM StudentInfo;
Output:
STUDENT_ID FIRST_NAME
---------- --------------------------------------------------
LAST_NAME                                          DATE_OF_B G
-------------------------------------------------- --------- -
EMAIL
--------------------------------------------------------------------------------
PHONE_NUMBER
---------------
       101 John
Smith                                              15-MAY-98 M
john.smith@email.com
-8223

       102 Emily
Davis                                              20-MAR-99 F
emily.davis@email.com
-2877

       103 Michael
Johnson                                            10-JUL-97 M
johnson@email.com
-4135

       104 Sarah
Wilson                                             05-JAN-00 F
sarah.wilson@email.com
-6741

       105 David
Brown                                              30-SEP-96 M
david.brown@email.com
-3444

       106 Olivia
Lee                                                18-DEC-99 F
olivia.lee@email.com
-6777

       107 Ethan
Martinez                                           25-NOV-98 M
ethan.martinez@email.com
-10110

       108 Sophia
Taylor                                             14-FEB-01 F
sophia.taylor@email.com
-4555

       109 Aiden
 Miller                                            14-APR-97 M
aiden.miller@email.com
-8999

       110 Emma
Anderson                                           07-AUG-02 F
emma.anderson@email.com
-5666

       111 Benjamin
Harris                                             22-JUN-95 M
benjamin.harris@email.com
-111

       112 Mia
Johnson                                            01-OCT-98 F
mia.johnson@email.com
-112

       113 William
White                                              12-MAR-03 M
william.white@email.com
-2333

       114 Ava
Robinson                                           28-APR-99 F
ava.robinson@email.com
-3444

       115 James
Turner                                             05-DEC-96 M
james.turner@email.com
-4555

ASCII and CHR Functions:

1. Retrieve the student_id, first_name, and last_name from the StudentInfo table. Use the ASCII function to find the ASCII 
values of the first characters of both first and last names for each student.
    SELECT student_id, first_name, last_name,
        ASCII(SUBSTR(first_name, 1, 1)) AS first_name_ascii,
        ASCII(SUBSTR(last_name, 1, 1)) AS last_name_ascii
    FROM StudentInfo;
Output:
STUDENT_ID FIRST_NAME
---------- --------------------------------------------------
LAST_NAME                                          FIRST_NAME_ASCII
-------------------------------------------------- ----------------
LAST_NAME_ASCII
---------------
       101 John
Smith                                                            74
             83

       102 Emily
Davis                                                            69
             68

       103 Michael
Johnson                                                          77
             74

       104 Sarah
Wilson                                                           83

             87

       105 David
Brown                                                            68
             66

       106 Olivia
Lee                                                              79
             76

       107 Ethan
Martinez                                                         69
             77

       108 Sophia
Taylor                                                           83
             84

       109 Aiden
 Miller                                                          65
             32


       110 Emma
Anderson                                                         69
             65

       111 Benjamin
Harris                                                           66

             72

       112 Mia
Johnson                                                          77
             74

       113 William

White                                                            87
             87

       114 Ava
Robinson                                                         65
             82

       115 James
Turner                                                           74
             84
2. You want to find the ASCII value of the '@' symbol in each students email address. Write an SQL query to retrieve the student_id, 
email, and the ASCII value of '@' using the ASCII function.
    SELECT student_id, email, ASCII('@') AS ascii_value_of_at_symbol FROM StudentInfo;
Output:
STUDENT_ID
----------
EMAIL
--------------------------------------------------------------------------------
ASCII_VALUE_OF_AT_SYMBOL
------------------------
       101
john.smith@email.com
                      64

       102
emily.davis@email.com
                      64

       103
johnson@email.com
                      64

       104
sarah.wilson@email.com
                      64

       105
david.brown@email.com
                      64

       106
olivia.lee@email.com
                      64

       107
ethan.martinez@email.com
                      64

       108
sophia.taylor@email.com
                      64

       109
aiden.miller@email.com
                      64

       110
emma.anderson@email.com
                      64

       111
benjamin.harris@email.com
                      64

       112
mia.johnson@email.com
                      64

       113
william.white@email.com
                      64

       114
ava.robinson@email.com
                      64

        115
james.turner@email.com
                      64

3. Display the student_id and first_name from the StudentInfo table. Use the CHR function to create a new column containing a special 
character for each student, such as a heart symbol (♥).
    SELECT student_id,first_name, CHR(64) AS special_character FROM StudentInfo;
Output:
STUDENT_ID FIRST_NAME                                         S
---------- -------------------------------------------------- -
       101 John                                               @
       102 Emily                                              @
       103 Michael                                            @
       104 Sarah                                              @
       105 David                                              @
       106 Olivia                                             @
       107 Ethan                                              @
       108 Sophia                                             @
       109 Aiden                                              @
       110 Emma                                               @
       111 Benjamin                                           @
       112 Mia                                                @
       113 William                                            @
       114 Ava                                                @
       115 James                                              @

4. Calculate the sum of ASCII values for the characters in each students first name. Retrieve the student_id, first_name, and the calculated
sum using the ASCII function and aggregation.(pending)

5.  Retrieve the student_id, last_name, and the ASCII value of the last character in the last name for each student using the ASCII function.
    SELECT student_id, last_name, ASCII(SUBSTR(last_name, -1, 1)) AS ascii_value FROM StudentInfo;
Output:
STUDENT_ID LAST_NAME                                          ASCII_VALUE
---------- -------------------------------------------------- -----------
       101 Smith                                                      104
       102 Davis                                                      115
       103 Johnson                                                    110
       104 Wilson                                                     110
       105 Brown                                                      110
       106 Lee                                                        101
       107 Martinez                                                   122
       108 Taylor                                                     114
       109  Miller                                                    114
       110 Anderson                                                   110
       111 Harris                                                     115
       112 Johnson                                                    110
       113 White                                                      101
       114 Robinson                                                   110
       115 Turner                                                     114

CONCAT Function: 

1. Create a query that retrieves the student_id, first_name, and last_name from the StudentInfo table. Use the CONCAT function to display the 
full names in the format "Last Name, First Name."
    SELECT student_id, CONCAT(CONCAT(first_name, ' '), last_name) AS full_name FROM StudentInfo;
    SELECT student_id, (first_name || '' || last_name) as full_name from StudentInfo;
Output:
STUDENT_ID
----------
FULL_NAME
--------------------------------------------------------------------------------
       101
John Smith

       102
Emily Davis

       103
Michael Johnson

       104
Sarah Wilson

       105
David Brown

       106
Olivia Lee

       107
Ethan Martinez

       108
Sophia Taylor

       109
Aiden  Miller

       110
Emma Anderson

       111
Benjamin Harris

       112
Mia Johnson

       113
William White

       114
Ava Robinson

       115
James Turner

2. You want to create email addresses for students based on their first names. Retrieve the student_id, first_name, and a new column with 
email addresses using the CONCAT function. Assume the email domain is '@example.com'.
    SELECT student_id, first_name, CONCAT(first_name, '@example.com') AS email FROM StudentInfo;
Output:
STUDENT_ID FIRST_NAME
---------- --------------------------------------------------
EMAIL
--------------------------------------------------------------
       101 John
John@example.com

       102 Emily
Emily@example.com

       103 Michael
Michael@example.com

       104 Sarah
Sarah@example.com

       105 David
David@example.com

       106 Olivia
Olivia@example.com

       107 Ethan
Ethan@example.com

       108 Sophia
Sophia@example.com

       109 Aiden
Aiden@example.com

       110 Emma
Emma@example.com

       111 Benjamin
Benjamin@example.com

       112 Mia
Mia@example.com

       113 William
William@example.com

       114 Ava
Ava@example.com

       115 James
James@example.com
3. Display the student_id, email, and a new email address for each student created by concatenating their student_id with '@university.com' 
using the CONCAT function.
    SELECT student_id, email, CONCAT(student_id, '@university.com') AS new_email FROM StudentInfo;
Output:
STUDENT_ID
----------
EMAIL
--------------------------------------------------------------------------------
NEW_EMAIL
-------------------------------------------------------
       101
john.smith@email.com
101@university.com

       102
emily.davis@email.com
102@university.com


       103
johnson@email.com
103@university.com

       104
sarah.wilson@email.com
104@university.com

       105
david.brown@email.com
105@university.com

       106
olivia.lee@email.com
106@university.com

       107
ethan.martinez@email.com
107@university.com

       108
sophia.taylor@email.com
108@university.com

       109
aiden.miller@email.com
109@university.com


       110
emma.anderson@email.com
110@university.com

       111
benjamin.harris@email.com
111@university.com

       112
mia.johnson@email.com
112@university.com

       113
william.white@email.com
113@university.com

       114
ava.robinson@email.com
114@university.com

       115
james.turner@email.com
115@university.com

4. Retrieve the student_id, first_name, and last_name from the StudentInfo table. Use the CONCAT function to create a new column displaying the 
first_name followed by the last_name without a space.
    SELECT student_id, first_name, last_name, CONCAT(first_name, last_name) AS full_name FROM StudentInfo;
Output:
STUDENT_ID FIRST_NAME
---------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
FULL_NAME
--------------------------------------------------------------------------------
       101 John
Smith
JohnSmith

       102 Emily
Davis
EmilyDavis

       103 Michael
Johnson
MichaelJohnson

       104 Sarah
Wilson
SarahWilson

       105 David
Brown
DavidBrown

       106 Olivia
Lee
OliviaLee

       107 Ethan
Martinez
EthanMartinez

       108 Sophia
Taylor
SophiaTaylor

       109 Aiden
Miller
Aiden Miller


       110 Emma
Anderson
EmmaAnderson

       111 Benjamin
Harris
BenjaminHarris

       112 Mia
Johnson
MiaJohnson

       113 William
White
WilliamWhite

       114 Ava
Robinson
AvaRobinson

       115 James
Turner
JamesTurner

5. You need to generate usernames for students by combining their first names and the last two digits of their student_id. Retrieve the student_id,
first_name, and the generated usernames using the CONCAT function.
    SELECT student_id, first_name, CONCAT(SUBSTR(student_id, -2),first_name) AS username FROM StudentInfo;
Output:
STUDENT_ID FIRST_NAME
---------- --------------------------------------------------
USERNAME
----------------------------------------------------------
       101 John
01John

       102 Emily
02Emily

       103 Michael
03Michael

       104 Sarah
04Sarah

       105 David
05David

       106 Olivia
06Olivia

       107 Ethan
07Ethan

       108 Sophia
08Sophia

       109 Aiden
09Aiden

       110 Emma
10Emma

       111 Benjamin
11Benjamin

       112 Mia
12Mia

       113 William
13William

       114 Ava
14Ava

       115 James
15James


LOWER and UPPER Functions:

1. Display the student_id and email from the StudentInfo table. Convert the email addresses to lowercase using the LOWER function.
    SELECT student_id, LOWER(email) AS lowercase_email FROM StudentInfo;
Output:
STUDENT_ID
----------
LOWERCASE_EMAIL
--------------------------------------------------------------------------------
       101
john.smith@email.com

       102
emily.davis@email.com

       103
johnson@email.com

       104
sarah.wilson@email.com

       105
david.brown@email.com

       106
olivia.lee@email.com

       107
ethan.martinez@email.com

       108
sophia.taylor@email.com

       109
aiden.miller@email.com

       110
emma.anderson@email.com

       111
benjamin.harris@email.com

       112
mia.johnson@email.com

       113
william.white@email.com

       114
ava.robinson@email.com

       115
james.turner@email.com

2. Retrieve the student_id, first_name, and last_name from the StudentInfo table. Use the UPPER function to display the full names in uppercase.
    SELECT student_id, UPPER(first_name ||' ' || last_name) AS uppercase_full_name FROM StudentInfo;
Output:
STUDENT_ID
----------
UPPERCASE_FULL_NAME
--------------------------------------------------------------------------------
       101
JOHN SMITH

       102
EMILY DAVIS

       103
MICHAEL JOHNSON

       104
SARAH WILSON

       105
DAVID BROWN

       106
OLIVIA LEE

       107
ETHAN MARTINEZ

       108
SOPHIA TAYLOR

       109
AIDEN  MILLER

       110
EMMA ANDERSON

       111
BENJAMIN HARRIS

       112
MIA JOHNSON

       113
WILLIAM WHITE

       114
AVA ROBINSON

       115
JAMES TURNER

3. Calculate the total number of students with lowercase email addresses in the StudentInfo table using the LOWER function and COUNT aggregation.
    SELECT COUNT(*) AS total_lower_emails FROM StudentInfo WHERE email = LOWER(email);
Output:
TOTAL_LOWER_EMAILS
------------------
                15

4. Retrieve the student_id, email, and first_name. Convert the email addresses to uppercase and display them alongside the original first names using the UPPER function.
    SELECT student_id, email, first_name, UPPER(email) AS upper_case_email FROM StudentInfo;
Output:
STUDENT_ID
----------
EMAIL
--------------------------------------------------------------------------------
FIRST_NAME
--------------------------------------------------
UPPER_CASE_EMAIL
--------------------------------------------------------------------------------
       101
john.smith@email.com
John
JOHN.SMITH@EMAIL.COM

       102
emily.davis@email.com
Emily
EMILY.DAVIS@EMAIL.COM

       103
johnson@email.com
Michael
JOHNSON@EMAIL.com

       104
sarah.wilson@email.com
Sarah
SARAH.WILSON@EMAIL.COM

       105
david.brown@email.com
David
DAVID.BROWN@EMAIL.COM

       106
olivia.lee@email.com
Olivia
OLIVIA.LEE@EMAIL.COM

       107
ethan.martinez@email.com
Ethan
ETHAN.MARTINEZ@EMAIL.COM

       108
sophia.taylor@email.com
Sophia
SOPHIA.TAYLOR@EMAIL.COM

       109
aiden.miller@email.com
Aiden
AIDEN.MILLER@EMAIL.COM

       110
emma.anderson@email.com
Emma
EMMA.ANDERSON@EMAIL.COM

       111
benjamin.harris@email.com
Benjamin
BENJAMIN.HARRIS@EMAIL.COM

       112
mia.johnson@email.com
Mia
MIA.JOHNSON@EMAIL.COM

       113
william.white@email.com
William
WILLIAM.WHITE@EMAIL.COM

       114
ava.robinson@email.com
Ava
AVA.ROBINSON@EMAIL.COM

       115
james.turner@email.com
James
JAMES.TURNER@EMAIL.COM

5. You want to display the student_id, email, and last_name from the StudentInfo table. Convert the email addresses to uppercase and remove any 
   leading and trailing spaces using the UPPER function and TRIM function.
    SELECT student_id, UPPER(TRIM(email)) AS email, last_name FROM StudentInfo;
Output:
STUDENT_ID
----------
EMAIL
--------------------------------------------------------------------------------
LAST_NAME
--------------------------------------------------
       101
JOHN.SMITH@EMAIL.COM
Smith

       102
EMILY.DAVIS@EMAIL.COM
Davis

       103
JOHNSON@EMAIL.COM
Johnson

       104
SARAH.WILSON@EMAIL.COM
Wilson

       105
DAVID.BROWN@EMAIL.COM
Brown

       106
OLIVIA.LEE@EMAIL.COM
Lee

       107
ETHAN.MARTINEZ@EMAIL.COM
Martinez

       108
SOPHIA.TAYLOR@EMAIL.COM
Taylor

       109
AIDEN.MILLER@EMAIL.COM
Miller

       110
EMMA.ANDERSON@EMAIL.COM
Anderson

       111
BENJAMIN.HARRIS@EMAIL.COM
Harris

       112
MIA.JOHNSON@EMAIL.COM
Johnson

       113
WILLIAM.WHITE@EMAIL.COM
White

       114
AVA.ROBINSON@EMAIL.COM
Robinson

       115
JAMES.TURNER@EMAIL.COM
Turner

 COUNT, AVG, MAX, MEDIAN, MIN, and SUM Functions: 

1. Calculate the total count of students in the StudentInfo table.
    SELECT COUNT(*) AS total_students FROM StudentInfo;
Output:
TOTAL_STUDENTS
--------------
            15
2. Determine the average age of students based on their date of birth and display it.(pending)

   

3. Find the maximum and minimum lengths of students  email addresses and display these values.
    SELECT MAX(LENGTH(email)) AS max_email_length, MIN(LENGTH(email)) AS min_email_length FROM StudentInfo;
Output:
MAX_EMAIL_LENGTH MIN_EMAIL_LENGTH
---------------- ----------------
              25               17
4. Determine the sum of ASCII values of the first character of each students last name and display the result.
    SELECT SUM(ASCII(SUBSTR(last_name, 1, 1))) AS sum_ascii_values FROM StudentInfo;
Output:
SUM_ASCII_VALUES
----------------
            1111
TRIM Function:

1. You have a column named description in a table that contains text data. You want to remove any leading and trailing spaces 
   from the values in this column. Write an SQL query using the TRIM function to achieve this.(pending)

   

2. Retrieve the names of all students in the StudentInfo table. Some names have extra spaces at the beginning and end. Write an 
   SQL query using the TRIM function to display the names without leading and trailing spaces.
    SELECT TRIM(first_name) AS trimmed_first_name, TRIM(last_name) AS trimmed_last_name FROM StudentInfo;
Output:
TRIMMED_FIRST_NAME
--------------------------------------------------
TRIMMED_LAST_NAME
--------------------------------------------------
John
Smith

Emily
Davis

Michael
Johnson

Sarah
Wilson

David
Brown

Olivia
Lee

Ethan
Martinez

Sophia
Taylor

Aiden
Miller

Emma
Anderson

Benjamin
Harris

Mia
Johnson

William
White

Ava
Robinson

James
Turner

3. In a table that stores product names, you notice that some names have unnecessary spaces. Write an SQL query using the TRIM 
   function to remove all leading and trailing spaces from the product names.(pending)

     


4. You need to list all cities from a table of addresses. However, some city names have leading spaces. Write an SQL query using the 
   TRIM function to display the city names without any leading spaces.(pending)


5. Retrieve a list of email addresses from the StudentInfo table. Some email addresses have extra spaces in them. Use the TRIM function 
   to remove any leading and trailing spaces from the email addresses in your query.
    SELECT TRIM(email) AS trimmed_email FROM StudentInfo;
Output:
TRIMMED_EMAIL
--------------------------------------------------------------------------------
john.smith@email.com
emily.davis@email.com
johnson@email.com
sarah.wilson@email.com
david.brown@email.com
olivia.lee@email.com
ethan.martinez@email.com
sophia.taylor@email.com
aiden.miller@email.com
emma.anderson@email.com
benjamin.harris@email.com
mia.johnson@email.com
william.white@email.com
ava.robinson@email.com
james.turner@email.com

LTRIM Function:(pending)

1. You have a column called product_code in a table where some values have extra spaces at the beginning. Write an SQL query using the LTRIM 
    function to remove leading spaces from the product codes.(pending)


2. In a table containing book titles, some titles have leading spaces. Write an SQL query using the LTRIM function to display the book titles
   without any leading spaces.
    

3. Retrieve a list of employee usernames from a table. Some usernames have leading spaces. Use the LTRIM function to remove these leading spaces in your query.
    
4. You are working with data from a sensor, and the sensor IDs sometimes have extra spaces at the beginning. Write an SQL query using the LTRIM 
   function to remove any leading spaces from the sensor IDs.
   


5. In a table that stores product names, some names have leading spaces that need to be removed. Write an SQL query using the LTRIM function to
   clean the product names.
    

RTRIM Function: (pending)

1. You are dealing with a table that contains URLs, and some of them have trailing spaces. Write an SQL query using the RTRIM function 
   to remove any trailing spaces from the URLs.
    SELECT RTRIM(url) AS trimmed_url FROM table_name;

2. In a table that stores file paths, some paths have trailing spaces that need to be eliminated. Write an SQL query using the RTRIM 
   function to display the file paths without trailing spaces.
    SELECT RTRIM(file_path) AS trimmed_file_path FROM table_name;


3. Retrieve a list of employee email addresses from a table. Some email addresses have trailing spaces. Use the RTRIM function to remove 
   these trailing spaces in your query.
    SELECT RTRIM(email) AS trimmed_email FROM employees;


4. You have a table with customer names, and some names have trailing spaces. Write an SQL query using the RTRIM function to display the
   customer names without any trailing spaces.
    SELECT RTRIM(customer_name) AS trimmed_customer_name FROM customers;

5. In a table containing postal codes, some codes have trailing spaces that need to be cleaned. Write an SQL query using the RTRIM function 
   to remove the trailing spaces from the postal codes.
    UPDATE table_name SET postal_code = RTRIM(postal_code);

 TRIM Function : (pending)

1. You are dealing with a table that contains employee usernames. Some usernames have both leading and trailing spaces. Write an SQL query
   using the TRIM function to retrieve the employee_id and cleaned usernames for all employees.
    SELECT employee_id, TRIM(username) AS cleaned_username FROM employees;

2. In a table storing company names, you notice that some names have both leading and trailing spaces. Write an SQL query using the TRIM 
   function to display the unique company names without leading and trailing spaces.
    SELECT DISTINCT TRIM(company_name) AS cleaned_company_name FROM companies;

3. Retrieve a list of product codes from the product table. Some product codes have both leading and trailing spaces. Use the TRIM 
   function to clean the product codes in your query.
    SELECT TRIM(product_code) AS cleaned_product_code FROM product;

4. In a table containing postal codes, some codes have both leading and trailing spaces that need to be removed. Write an SQL query using 
   the TRIM function to clean the postal codes.
    UPDATE table_name SET postal_code = TRIM(postal_code);

5. You have a table with customer names, and some names have both leading and trailing spaces. Write an SQL query using the TRIM function 
   to display the customer names without any leading and trailing spaces.
    SELECT TRIM(customer_name) AS cleaned_customer_name FROM customers;

SUBSTR Function:

1. Retrieve the first three characters of each students first name from the StudentInfo table using the SUBSTR function. Display the student_id 
   and the extracted substrings.
    SELECT student_id, SUBSTR(first_name, 1, 3) AS first_name_substring FROM StudentInfo;
Output:
STUDENT_ID FIRST_NAME_S
---------- ------------
       101 Joh
       102 Emi
       103 Mic
       104 Sar
       105 Dav
       106 Oli
       107 Eth
       108 Sop
       109 Aid
       110 Emm
       111 Ben
       112 Mia
       113 Wil
       114 Ava
       115 Jam

2. You need to extract the last two characters from each students last name. Write an SQL query using the SUBSTR function to retrieve the 
   student_id, last_name, and the extracted substrings.
    SELECT student_id, last_name, SUBSTR(last_name, -2) AS last_name_substring FROM StudentInfo;
Output:
STUDENT_ID LAST_NAME                                          LAST_NAM
---------- -------------------------------------------------- --------
       101 Smith                                              th
       102 Davis                                              is
       103 Johnson                                            on
       104 Wilson                                             on
       105 Brown                                              wn
       106 Lee                                                ee
       107 Martinez                                           ez
       108 Taylor                                             or
       109  Miller                                            er
       110 Anderson                                           on
       111 Harris                                             is
       112 Johnson                                            on
       113 White                                              te
       114 Robinson                                           on
       115 Turner                                             er
3. Display the student_id, email, and only the domain part of each students email address using the SUBSTR function. Assume that the domain 
   is the characters after the '@' symbol.
    SELECT student_id, email, SUBSTR(email, INSTR(email, '@') ) AS domain FROM StudentInfo;
Output:
STUDENT_ID
----------
EMAIL
--------------------------------------------------------------------------------
DOMAIN
--------------------------------------------------------------------------------
       101
john.smith@email.com
@email.com

       102
emily.davis@email.com
@email.com

       103
johnson@email.com
@email.com

       104
sarah.wilson@email.com
@email.com

       105
david.brown@email.com
@email.com

       106
olivia.lee@email.com
@email.com

       107
ethan.martinez@email.com
@email.com

       108
sophia.taylor@email.com
@email.com

       109
aiden.miller@email.com
@email.com

       110
emma.anderson@email.com
@email.com

       111
benjamin.harris@email.com
@email.com

       112
mia.johnson@email.com
@email.com

       113
william.white@email.com
@email.com

       114
ava.robinson@email.com
@email.com

       115
james.turner@email.com
@email.com
4. Calculate the length of the first five characters in each students email address. Retrieve the student_id, email, and the length of the 
   substrings using the SUBSTR and LENGTH functions.
    SELECT student_id, email, LENGTH(SUBSTR(email, 1, 5)) AS length_of_first_five_characters FROM StudentInfo;
Output:
STUDENT_ID
----------
EMAIL
--------------------------------------------------------------------------------
LENGTH_OF_FIRST_FIVE_CHARACTERS
-------------------------------
       101
john.smith@email.com
                              5

       102
emily.davis@email.com
                              5

       103
johnson@email.com
                              5

       104
sarah.wilson@email.com

                              5

       105
david.brown@email.com
                              5

       106
olivia.lee@email.com
                              5

       107
ethan.martinez@email.com
                              5

       108
sophia.taylor@email.com
                              5

       109
aiden.miller@email.com
                              5

       110
emma.anderson@email.com
                              5

       111
benjamin.harris@email.com
                              5

       112
mia.johnson@email.com
                              5

       113
william.white@email.com
                              5

       114
ava.robinson@email.com
                              5

       115
james.turner@email.com
                              5

5. Retrieve the student_id, first_name, and the third to fifth characters of each students first name using the SUBSTR function.
    SELECT student_id, first_name, SUBSTR(first_name, 3, 3) AS extracted_substring FROM StudentInfo;
Output:
STUDENT_ID FIRST_NAME                                         EXTRACTED_SU
---------- -------------------------------------------------- ------------
       101 John                                               hn
       102 Emily                                              ily
       103 Michael                                            cha
       104 Sarah                                              rah
       105 David                                              vid
       106 Olivia                                             ivi
       107 Ethan                                              han
       108 Sophia                                             phi
       109 Aiden                                              den
       110 Emma                                               ma
       111 Benjamin                                           nja
       112 Mia                                                a
       113 William                                            lli
       114 Ava                                                a
       115 James                                              mes

NVL Function: 

1. In the StudentInfo table, some students have missing values for their phone numbers (NULL). Use the NVL function to display
   'Not Available' for students with no phone number. Retrieve the student_id, first_name, and phone numbers.
    SELECT student_id, first_name, NVL(phone_number, 'Not Available') AS formatted_phone FROM StudentInfo;
Output:
STUDENT_ID FIRST_NAME                                         FORMATTED_PHONE
---------- -------------------------------------------------- ---------------
       101 John                                               -8223
       102 Emily                                              -2877
       103 Michael                                            -4135
       104 Sarah                                              -6741
       105 David                                              -3444
       106 Olivia                                             -6777
       107 Ethan                                              -10110
       108 Sophia                                             -4555
       109 Aiden                                              -8999
       110 Emma                                               -5666
       111 Benjamin                                           -111
       112 Mia                                                -112
       113 William                                            -2333
       114 Ava                                                -3444
       115 James                                              -4555

2. Calculate the age of each student based on their date of birth, and for students with missing birthdates (NULL), display 
   'Age Unknown' using the NVL function. Retrieve the student_id, first_name, and the calculated age.
    SELECT student_id, first_name, NVL(TO_CHAR(ROUND(MONTHS_BETWEEN(CURRENT_DATE, date_of_birth) / 12)), 'Age Unknown') AS age FROM StudentInfo;
Output:
STUDENT_ID FIRST_NAME
---------- --------------------------------------------------
AGE
----------------------------------------
       101 John
25

       102 Emily
25

       103 Michael
26

       104 Sarah
24

       105 David
27

       106 Olivia
24

       107 Ethan
25

       108 Sophia
23

       109 Aiden
27

       110 Emma
21

       111 Benjamin
28

       112 Mia
25

       113 William
21

       114 Ava
25

       115 James
27

3. You want to categorize students as 'Male' or 'Female' based on their gender, but some have NULL values. Use the NVL function
   to categorize students with NULL gender values as 'Unknown'. Retrieve the student_id, first_name, and the categorized gender.
    SELECT student_id, first_name, NVL(gender, 'Unknown') AS categorized_gender FROM StudentInfo;
Output:
STUDENT_ID FIRST_NAME                                         CATEGOR
---------- -------------------------------------------------- -------
       101 John                                               M
       102 Emily                                              F
       103 Michael                                            M
       104 Sarah                                              F
       105 David                                              M
       106 Olivia                                             F
       107 Ethan                                              M
       108 Sophia                                             F
       109 Aiden                                              M
       110 Emma                                               F
       111 Benjamin                                           M
       112 Mia                                                F
       113 William                                            M
       114 Ava                                                F
       115 James                                              M

4. Display the student_id, email, and for students with NULL email addresses, show 'No Email' using the NVL function.
    SELECT student_id, NVL(email, 'No Email') AS formatted_email FROM StudentInfo;
Output:
STUDENT_ID
----------
FORMATTED_EMAIL
--------------------------------------------------------------------------------
       101
john.smith@email.com

       102
emily.davis@email.com

       103
johnson@email.com

       104
sarah.wilson@email.com

       105
david.brown@email.com

       106
olivia.lee@email.com

       107
ethan.martinez@email.com

       108
sophia.taylor@email.com

       109
aiden.miller@email.com

       110
emma.anderson@email.com

       111
benjamin.harris@email.com

       112
mia.johnson@email.com

       113
william.white@email.com

       114
ava.robinson@email.com

       115
james.turner@email.com

5. You have a table that stores product prices, and some prices are missing (NULL). Use the NVL function to display 'Price Not Available'
   for products with no price. Retrieve the product names and prices(pending).
    SELECT product_name, NVL(price, 'Price Not Available') AS formatted_price FROM table_name;

 NVL2 Function: 

1. You want to calculate the bonus for employees. If an employee's performance is 'Excellent,' the bonus is 1000; otherwise, it's 0.
   Use the NVL2 function to calculate the bonus. Retrieve the employee_id, first_name, performance, and the calculated bonus.(pending)
    SELECT employee_id, first_name, performance, NVL2(performance, 'Excellent', 0) AS bonus FROM employees;


2. In a table that stores order quantities, some quantities are missing (NULL). Use the NVL2 function to calculate the adjusted quantity.
   If the quantity is missing, assume its 0. Retrieve the order IDs and adjusted quantities.(pending)
    SELECT order_id, NVL2(quantity, quantity, 0) AS adjusted_quantity FROM order_quantities;


3. You need to categorize students based on their age. If a student is 18 or older, categorize them as 'Adult'; otherwise, categorize them as 
   'Minor.' Use the NVL2 function to categorize students with NULL birthdates as 'Unknown.' Retrieve the student_id, first_name, and the categorized age.
    SELECT student_id, first_name, NVL2( date_of_birth,
    CASE WHEN EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM date_of_birth) >= 18 THEN 'Adult' ELSE 'Minor' END, 'Unknown') AS age_category FROM StudentInfo;
Output:
STUDENT_ID FIRST_NAME                                         AGE_CAT
---------- -------------------------------------------------- -------
       101 John                                               Adult
       102 Emily                                              Adult
       103 Michael                                            Adult
       104 Sarah                                              Adult
       105 David                                              Adult
       106 Olivia                                             Adult
       107 Ethan                                              Adult
       108 Sophia                                             Adult
       109 Aiden                                              Adult
       110 Emma                                               Adult
       111 Benjamin                                           Adult
       112 Mia                                                Adult
       113 William                                            Adult
       114 Ava                                                Adult
       115 James                                              Adult

4. Calculate the total score for students. If a students score is missing (NULL), use the NVL2 function to assume their score is 0. Retrieve the 
   student_id, first_name, and the total score.(pending)



5. In a table storing product quantities, some quantities are missing (NULL). Use the NVL2 function to calculate the adjusted quantity. If the quantity 
   is missing, assume its 1. Retrieve the product names and adjusted quantities.(pending)
    SELECT product_name, NVL2(quantity, quantity, 1) AS adjusted_quantity FROM product_table;

LENGTH Function:

1. Calculate the length of each students first name in the StudentInfo table. Retrieve the student_id, first_name, and the length of the first names.
    SELECT student_id, first_name, LENGTH(first_name) AS first_name_length FROM StudentInfo;
Output:
STUDENT_ID FIRST_NAME                                         FIRST_NAME_LENGTH
---------- -------------------------------------------------- -----------------
       101 John                                                               4
       102 Emily                                                              5
       103 Michael                                                            7
       104 Sarah                                                              5
       105 David                                                              5
       106 Olivia                                                             6
       107 Ethan                                                              5
       108 Sophia                                                             6
       109 Aiden                                                              5
       110 Emma                                                               4
       111 Benjamin                                                           8
       112 Mia                                                                3
       113 William                                                            7
       114 Ava                                                                3
       115 James                                                              5

2. You have a table that stores email addresses, and you want to find the length of each email address. Retrieve the email addresses and their lengths
   using the LENGTH function.
    SELECT email, LENGTH(email) AS email_length FROM StudentInfo;
Output:
EMAIL
--------------------------------------------------------------------------------
EMAIL_LENGTH
------------
john.smith@email.com
          20

emily.davis@email.com
          21

johnson@email.com
          17

sarah.wilson@email.com
          22

david.brown@email.com
          21

olivia.lee@email.com
          20

ethan.martinez@email.com
          24

sophia.taylor@email.com
          23

aiden.miller@email.com
          22

emma.anderson@email.com
          23

benjamin.harris@email.com
          25

mia.johnson@email.com
          21

william.white@email.com
          23

ava.robinson@email.com
          22

james.turner@email.com
          22

3. Determine the number of characters in each students last name in the StudentInfo table. Retrieve the student_id, last_name, and the length of the last names.
    SELECT student_id, last_name, LENGTH(last_name) AS last_name_length FROM StudentInfo;
Output:
STUDENT_ID LAST_NAME                                          LAST_NAME_LENGTH
---------- -------------------------------------------------- ----------------
       101 Smith                                                             5
       102 Davis                                                             5
       103 Johnson                                                           7
       104 Wilson                                                            6
       105 Brown                                                             5
       106 Lee                                                               3
       107 Martinez                                                          8
       108 Taylor                                                            6
       109  Miller                                                           7
       110 Anderson                                                          8
       111 Harris                                                            6
       112 Johnson                                                           7
       113 White                                                             5
       114 Robinson                                                          8
       115 Turner                                                            6

4. Calculate the length of each city name in a table that stores cities. Retrieve the city names and their lengths using the LENGTH function.(pending)
    SELECT city_name, LENGTH(city_name) AS city_name_length FROM city_table;

5. You want to find the length of each product name in a table. Retrieve the product names and their lengths using the LENGTH function.(pending)
    SELECT product_name, LENGTH(product_name) AS product_name_length FROM product_table;


 SOUNDEX Function (StudentInfo Table): (pending)
1. You have a requirement to find students in the StudentInfo table who may have similar-sounding last names. Write an SQL query using the Soundex
   function to display the student_id, last_name, and Soundex codes for students with last names that sound alike.

   2. Use the Soundex function in the StudentInfo table to calculate the Soundex codes for each students last name. Retrieve the student_id,
   last_name, and Soundex codes. 
SELECT student_id, last_name, SOUNDEX(last_name) AS last_name_soundex
FROM StudentInfo;

3. In the StudentInfo table, some students may have last names that sound similar but are spelled differently. Write an SQL query with the 
   Soundex function to identify such students. Display the student_id, last_name, and Soundex codes.

4. You are tasked with finding potential duplicate student records in the StudentInfo table based on similar-sounding last names. Write an SQL 
query using the Soundex function to retrieve the student_id, last_name, and Soundex codes for students with last names that sound alike.
