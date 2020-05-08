--This is a stored procedure for entering a new Manager into the database.
--This makes entering new Managers much more efficient and easier.

CREATE PROC ManagerCreate       --This creates the procedure and names it "ManagerCreate"
@MANAGER_ID varchar(50),        --This tells the proceudre to accept the MANAGER_ID attribute
@MANAGER_FNAME varchar(50),     --This tells the proceudre to accept the MANAGER_FNAME attribute
@MANAGER_LNAME varchar(50),     --This tells the proceudre to accept the MANAGER_LNAME attribute
@MANAGER_DOB date,              --This tells the proceudre to accept the MANAGER_DOB attribute
@MANAGER_EMAIL varchar(50),     --This tells the proceudre to accept the MANAGER_EMAIL attribute
@MANAGER_PASS varchar(50),      --This tells the proceudre to accept the MANAGER_PASS attribute
@MANAGER_PHONE varchar(50),     --This tells the proceudre to accept the MANAGER_PHONE attribute
@MANAGER_ADDRESS varchar(50),   --This tells the proceudre to accept the MANAGER_ADDRESS attribute
@LOG_ID varchar(50)             --This tells the proceudre to accept the LOG_ID attribute

AS

--This starts the procedure
BEGIN 


--The INSERT statement tells the procedure WHERE to insert the data within the Manager table
--(i.e. - insert data into MANAGER_ID, MANAGER_FNAME, MANAGER_FNAME and so on)

INSERT INTO Manager([MANAGER_ID], [MANAGER_FNAME], [MANAGER_LNAME], [MANAGER_DOB], [MANAGER_EMAIL], [MANAGER_PASS], [MANAGER_PHONE], [MANAGER_ADDRESS], [LOG_ID])


--The VALUES statement tells the procedure WHAT data to insert within the Manager table 
--(i.e. - insert "mikesmith101" into MANAGER_ID column, "Mike" into MANAGER_FNAME and so on)

VALUES(@MANAGER_ID, @MANAGER_FNAME, @MANAGER_LNAME, @MANAGER_DOB, @MANAGER_EMAIL, @MANAGER_PASS, @MANAGER_PHONE, @MANAGER_ADDRESS, @LOG_ID)


--This ends the proceudre
END







--This is executing the ManagerCreate procedure


INSERT INTO Log_In(LOG_ID, LOG_PASS)      --This tell the prcedure to enter data in the LOG_IN and LOG_PASS columns
VALUES('TomDavis23', 'p@$$w0rd');         --This tells the procedure what the new Members Login ID and Password will be

EXEC ManagerCreate
@MANAGER_ID = 'TomDavis23',                   --Manager's unique ID
@MANAGER_FNAME = 'Tom',                       --Manager first name
@MANAGER_LNAME = 'Davis',                     --Manager's last name
@MANAGER_DOB = '01-01-2000',                  --Manager's date of birth
@MANAGER_EMAIL = 'TomDavis23@gmail.com',      --Manager's email
@MANAGER_PASS = 'p@$$w0rd',                   --Manager's password
@MANAGER_PHONE = '5023889910',                --Manager's phone number
@MANAGER_ADDRESS = 'louisville ky',           --Manager's phone number
@LOG_ID = 'TomDavis23';                       --Manager's log ID
