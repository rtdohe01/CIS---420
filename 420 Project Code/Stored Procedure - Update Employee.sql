--This is a stored procedure for updating an current Employee's account information in the database. 
--This makes updating current Employee's information much more efficient and easier.



CREATE PROC EmployeeUpdate		--This creates the procedure and names it "EmployeeUpdate"
@EMP_ID varchar(50),			--This tells the proceudre to accept the EMP_ID attribute
@EMP_FNAME varchar(50),			--This tells the proceudre to accept the EMP_FNAME attribute
@EMP_LNAME varchar(50),			--This tells the proceudre to accept the EMP_LNAME attribute
@EMP_DOB date,					--This tells the proceudre to accept the EMP_DOB attribute
@EMP_EMAIL varchar(50),			--This tells the proceudre to accept the EMP_EMAIL attribute
@EMP_PASS varchar(50),			--This tells the proceudre to accept the EMP_PASS attribute
@EMP_PHONE varchar(50),			--This tells the proceudre to accept the EMP_PHONE attribute
@EMP_ADDRESS varchar(50),		--This tells the proceudre to accept the EMP_ADDRESS attribute
@LOG_ID varchar(50)				--This tells the proceudre to accept the LOG_ID attribute


AS

--This starts the procedure
BEGIN


--This update statement tells the procedure which table is getting updated
UPDATE Employee
SET
EMP_ID = @EMP_ID,				--This tells the procuedure the Employee ID must match a current, existing Employee ID to make an update
EMP_FNAME = @EMP_FNAME,			--This tells the procedure to only accept a current Employee's first name in the Employee table (no update) or update this Employee's first name
EMP_LNAME = @EMP_LNAME,			--This tells the procedure to only accept a current Employee's last name in the Employee table (no update) or update this Employee's last name
EMP_DOB = @EMP_DOB,				--This tells the procedure to only accept a current Employee's date of birth in the Employee table (no update) or update this Employee's date of birth
EMP_EMAIL = @EMP_EMAIL,			--This tells the procedure to only accept a current Employee's email in the Employee table (no update) or update this Employee's email
EMP_PASS = @EMP_PASS,			--This tells the procedure to only accept a current Employee's password in the Employee table (no update) or update this Employee's password
EMP_PHONE = @EMP_PHONE,			--This tells the procedure to only accept a current Employee's phone number in the Employee table (no update) or update this Employee's phone number
EMP_ADDRESS = @EMP_ADDRESS,		--This tells the procedure to only accept a current Employee's address in the Employee table (no update) or update this Employee's address
LOG_ID = @LOG_ID				--This tells the procedure to only accept a current Employee's login ID in the Employee table (no update) or update this Employee's login


--This tells the procedure to only accpet an update if the Employee ID matches a current, existing Employee ID in the Employee table
WHERE EMP_ID = @EMP_ID			


--The ends the procedure
END









--This is executing the EmployeeUpdate procedure

EXEC EmployeeUpdate
@EMP_ID ='joeyrobbinson12',						--Employee's unique ID - This must match a current exisiting EMP_ID in the Employee table to be able to make an update
@EMP_FNAME ='Joey',								--Employee first name - can remain the same or change 
@EMP_LNAME = 'Robbinson',						--Employee's last name - can remain the same or change
@EMP_DOB ='02-10-2000',							--Employee's date of birth - can remain the same or change
@EMP_EMAIL ='joeyrobbinson12@gmail.com',		--Employee's email - can remain the same or change
@EMP_PASS ='password',							--Employee's password - can remain the same or change
@EMP_PHONE ='5023662240',						--Employee's phone number - can remain the same or change
@EMP_ADDRESS ='wild run louisville ky',			--Employee's home address - can remain the same or change
@LOG_ID = 'joeyrobbinson12';					--Employee's log ID - can remain the same or change


