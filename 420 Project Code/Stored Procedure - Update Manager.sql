--This is a stored procedure for updating a current Manager's account information in the database. 
--This makes updating current Manager's information much more efficient and easier.



CREATE PROC ManagerUpdate			--This creates the procedure and names it "ManagerUpdate"
@MANAGER_ID varchar(50),			--This tells the proceudre to accept the MANAGER_ID attribute
@MANAGER_FNAME varchar(50),			--This tells the proceudre to accept the MANAGER_FNAME attribute
@MANAGER_LNAME varchar(50),			--This tells the proceudre to accept the MANAGER_LNAME attribute
@MANAGER_DOB date,					--This tells the proceudre to accept the MANAGER_DOB attribute
@MANAGER_EMAIL varchar(50),			--This tells the proceudre to accept the MANAGER_EMAIL attribute
@MANAGER_PASS varchar(50),			--This tells the proceudre to accept the MANAGER_PASS attribute
@MANAGER_PHONE varchar(50),			--This tells the proceudre to accept the MANAGER_PHONE attribute
@MANAGER_ADDRESS varchar(50),		--This tells the proceudre to accept the MANAGER_ADDRESS attribute
@LOG_ID varchar(50)					--This tells the proceudre to accept the LOG_ID attribute


AS

--This starts the procedure
BEGIN

--This update statement tells the procedure which table is getting updated
UPDATE MANAGER
SET
MANAGER_ID = @MANAGER_ID,				--This tells the procuedure the Manager's ID must match a current, existing Manager ID to make an update
MANAGER_FNAME = @MANAGER_FNAME,			--This tells the procedure to only accept a current Manager's first name in the Manager table (no update) or update this Manager's first name
MANAGER_LNAME = @MANAGER_LNAME,			--This tells the procedure to only accept a current Manager's last name in the Manager table (no update) or update this Manager's last name
MANAGER_DOB = @MANAGER_DOB,				--This tells the procedure to only accept a current Manager's date of birth in the Manager table (no update) or update this Manager's date of birth
MANAGER_EMAIL = @MANAGER_EMAIL,			--This tells the procedure to only accept a current Manager's email in the Manager table (no update) or update this Manager's email
MANAGER_PASS = @MANAGER_PASS,			--This tells the procedure to only accept a current Manager's password in the Manager table (no update) or update this Manager's password
MANAGER_PHONE = @MANAGER_PHONE,			--This tells the procedure to only accept a current Manager's phone number in the Manager table (no update) or update this Manager's phone number
MANAGER_ADDRESS = @MANAGER_ADDRESS,		--This tells the procedure to only accept a current Manager's address in the Manager table (no update) or update this Manager's address
LOG_ID = @LOG_ID						--This tells the procedure to only accept a current Manager's login ID in the Manager table (no update) or update this Manager's login ID



--This tells the procedure to only accpet an update if the Manager ID matches a current, existing Manager ID in the Manager table
WHERE MANAGER_ID = @MANAGER_ID


--The ends the procedure
END








--This is executing the ManagerUpdate procedure

EXEC ManagerUpdate
@MANAGER_ID = 'RonWillis89',						--Manager's unique ID - This must match a current exisiting MANAGER_ID in the Manager table to be able to make an update
@MANAGER_FNAME = 'Ron',								--Manager first name - can remain the same or change 
@MANAGER_LNAME = 'Willis',							--Manager's last name - can remain the same or change
@MANAGER_DOB = '01-01-2000',						--Manager's date of birth - can remain the same or change
@MANAGER_EMAIL = 'RonWillis89@gmail.com',			--Manager's email - can remain the same or change
@MANAGER_PASS = 'password0000',						--Manager's password - can remain the same or change
@MANAGER_PHONE = '5023889910',						--Manager's phone number - can remain the same or change
@MANAGER_ADDRESS = 'dog creek louisville ky',		--Manager's home address - can remain the same or change
@LOG_ID = 'RonWillis89'								--Manager's log ID - can remain the same or change