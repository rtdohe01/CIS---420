--This is a stored procedure for entering a new Employee into the database. 
--This makes entering new Employees much more efficient and easier.

CREATE PROC EmployeeCreate      --This creates the procedure and names it "EmployeeCreate"
@EMP_ID varchar(50),            --This tells the proceudre to accept the EMP_ID attribute 
@EMP_FNAME varchar(50),         --This tells the proceudre to accept the EMP_FNAME attribute
@EMP_LNAME varchar(50),         --This tells the proceudre to accept the EMP_LNAME attribute
@EMP_DOB date,                  --This tells the proceudre to accept the EMP_DOB attribute
@EMP_EMAIL varchar(50),         --This tells the proceudre to accept the EMP_EMAIL attribute
@EMP_PASS varchar(50),          --This tells the proceudre to accept the EMP_PASS attribute
@EMP_PHONE varchar(50),         --This tells the proceudre to accept the EMP_PHONE attribute
@EMP_ADDRESS varchar(50),       --This tells the proceudre to accept the EMP_ADDRESS attribute
@LOG_ID varchar(50);            --This tells the proceudre to accept the LOG_ID attribute


AS 


BEGIN

--The INSERT statement tells the procedure WHERE to insert the data within the Member table 
--(i.e. - insert data into EMP_ID, EMP_FNAME... columns)

INSERT INTO Employee([EMP_ID], [EMP_FNAME], [EMP_LNAME], [EMP_DOB], [EMP_EMAIL], [EMP_PASS], [EMP_PHONE], [EMP_ADDRESS],[LOG_ID])


--The VALUES statement tells the procedure WHAT data to insert within the Members table 
--(i.e. - insert "mikesmith101" into EMP_ID column, "Mike" into EMP_FNAME and so on)
                                                                                                                         
VALUES(@EMP_ID, @EMP_FNAME, @EMP_LNAME, @EMP_DOB, @EMP_EMAIL, @EMP_PASS, @EMP_PHONE, @EMP_ADDRESS, @LOG_ID)


--This ends the procedure
END







--This is executing the EmployeeCreate procedure

INSERT INTO Log_In(LOG_ID, LOG_PASS)	    	--This tell the prcedure to enter data in the LOG_IN and LOG_PASS columns
VALUES('joeyrobbinson12', 'password');	  	--This tells the procedure what the new Members Login ID and Password will be


EXEC EmployeeCreate
@EMP_ID ='joeyrobbinson12',							        --Employee's unique ID
@EMP_FNAME ='joey',								    	        --Employee first name
@EMP_LNAME ='robbinson',							          --Employee's last name
@EMP_DOB ='02-10-2000',							          	--Employee's date of birth
@EMP_EMAIL ='joeyrobbinson12@gmail.com',		  	--Employee's email
@EMP_PASS ='password',							          	--Employee's password
@EMP_PHONE ='5023662240',						          	--Employee's phone number
@EMP_ADDRESS ='wild run louisville ky',			  	--Employee's home address
@LOG_ID = 'joeyrobbinson12';					        	--Employee's log ID
