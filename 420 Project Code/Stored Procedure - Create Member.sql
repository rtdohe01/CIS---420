--This is a stored procedure for entering a new Member into the database.
--This makes entering new Members much more efficient and easier.

CREATE PROC MemberCreate		--This creates the procedure and names it "MemberCreate"
@MEM_ID varchar(50),			--This tells the proceudre to accept the MEM_ID attribute
@MEM_FNAME varchar(50),			--This tells the proceudre to accept the MEM_FNAME attribute
@MEM_LNAME varchar(50),			--This tells the proceudre to accept the MEM_LNAME attribute
@MEM_DOB date,					    --This tells the proceudre to accept the MEM_DOB attribute
@MEM_EMAIL varchar(50),			--This tells the proceudre to accept the MEM_EMAIL attribute
@MEM_PASS varchar(50),			--This tells the proceudre to accept the MEM_PASS attribute
@MEM_PHONE varchar(50),			--This tells the proceudre to accept the MEM_PHONE attribute
@MEM_ADDRESS varchar(50),		--This tells the proceudre to accept the MEM_ADDRESS attribute
@LOG_ID varchar(50)				--This tells the proceudre to accept the LOG_ID attribute

AS

--This starts the procedure
BEGIN

--The INSERT statement tells the procedure WHERE to insert the data within the Member table
--(i.e. - insert data into MEM_ID, MEM_FNAME... columns)
INSERT INTO Member([MEM_ID], [MEM_FNAME], [MEM_LNAME], [MEM_DOB], [MEM_EMAIL], [MEM_PASS], [MEM_PHONE], [MEM_ADDRESS], [LOG_ID])



--The VALUES statement tells the procedure WHAT data to insert within the Manager table 
--(i.e. - insert "mikesmith101" into MEM_ID column, "Mike" into MEM_FNAME and so on)
VALUES(@MEM_ID, @MEM_FNAME, @MEM_LNAME, @MEM_DOB, @MEM_EMAIL, @MEM_PASS, @MEM_PHONE, @MEM_ADDRESS, @LOG_ID)


--This ends the proceudre
END








--This is executing the MemberCreate procedure


INSERT INTO Log_In(LOG_ID,LOG_PASS)  --This tell the prcedure to enter data in the LOG_IN and LOG_PASS columns
VALUES('MikeSmith101', 'P@$$w0rd!'); --This tells the procedure what the new Members Login ID and Password will be


EXEC MemberCreate 
@MEM_ID = 'MikeSmith101',									--Member's unique ID
@MEM_FNAME = 'Mike',										--Members first name
@MEM_LNAME = 'Smith',										--Member's last name
@MEM_DOB = '03-24-1997',									--Member's date of birth
@MEM_EMAIL = 'mikesmith101@gmail.com',						--Member's email
@MEM_PASS = 'P@$$w0rd!',									--Member's password
@MEM_PHONE = '(502)242-3737',								--Member's phone number
@MEM_ADDRESS = '2308 Ranch Drive, Louisville KY 40214',		--Member's home address
@LOG_ID = 'MikeSmith101';									--Member's log ID
