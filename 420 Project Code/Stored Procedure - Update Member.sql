--This is a stored procedure for updating a current Member's account information in the database. 
--This makes updating current Member's information much more efficient and easier.


CREATE PROC MemberUpdate        --This creates the procedure and names it "MemberUpdate"
@MEM_ID varchar(50),            --This tells the proceudre to accept the MEM_ID attribute
@MEM_FNAME varchar(50),         --This tells the proceudre to accept the MEM_FNAME attribute
@MEM_LNAME varchar(50),         --This tells the proceudre to accept the MEM_LNAME attribute
@MEM_DOB date,                  --This tells the proceudre to accept the MEM_DOB attribute
@MEM_EMAIL varchar(50),         --This tells the proceudre to accept the MEM_EMAIL attribute
@MEM_PASS varchar(50),          --This tells the proceudre to accept the MEM_PASS attribute
@MEM_PHONE varchar(50),         --This tells the proceudre to accept the MEM_PHONE attribute
@MEM_ADDRESS varchar(50),       --This tells the proceudre to accept the MEM_ADDRESS attribute
@LOG_ID varchar(50),            --This tells the proceudre to accept the LOG_ID attribute
@LOCKER_NUM int	                --This tells the proceudre to accept the LOCKER_NUM attribute

AS


--This starts the procedure
BEGIN


--This update statement tells the procedure which table is getting updated
UPDATE Member
SET
MEM_ID = @MEM_ID,               --This tells the procuedure the Member's ID must match a current, existing Member ID to make an update
MEM_FNAME = @MEM_FNAME,         --This tells the procedure to only accept a current Member's first name in the Member table (no update) or update this Member's first name
MEM_LNAME = @MEM_LNAME,         --This tells the procedure to only accept a current Member's last name in the Member table (no update) or update this Member's last name
MEM_DOB = @MEM_DOB,             --This tells the procedure to only accept a current Member's date of birth in the Member table (no update) or update this Member's date of birth
MEM_EMAIL = @MEM_EMAIL,         --This tells the procedure to only accept a current Member's email in the Member table (no update) or update this Member's email
MEM_PASS = @MEM_PASS,           --This tells the procedure to only accept a current Member's password in the Member table (no update) or update this Member's password
MEM_PHONE = @MEM_PHONE,         --This tells the procedure to only accept a current Member's phone number in the Member table (no update) or update this Member's phone number
MEM_ADDRESS = @MEM_ADDRESS,     --This tells the procedure to only accept a current Member's address in the Member table (no update) or update this Member's address
LOG_ID = @LOG_ID,               --This tells the procedure to only accept a current Member's login ID in the Member table (no update) or update this Member's login
LOCKER_NUM = @LOCKER_NUM        --This tells the procedure to only accept a current Member's locker number in the Member table (no update) or update this Member's locker number



--This tells the procedure to only accpet an update if the Member ID matches a current, existing Member ID in the Employee table
WHERE MEM_ID = @MEM_ID


--The ends the procedure
END







--This is executing the MemberUpdate procedure

EXEC MemberUpdate
@MEM_ID = 'donnymike000111',                                  --Manager's unique ID - This must match a current exisiting MANAGER_ID in the Manager table to be able to make an update
@MEM_FNAME = 'sharon',                                        --Manager first name - can remain the same or change 
@MEM_LNAME = 'donsie',                                        --Manager's last name - can remain the same or change
@MEM_DOB = '01-20-2010',                                      --Manager's date of birth - can remain the same or change
@MEM_EMAIL = 'donnymike@gmail.com',                           --Manager's email - can remain the same or change
@MEM_PASS = 'password',                                       --Manager's password - can remain the same or change
@MEM_PHONE = '(502)24242424',                                 --Manager's phone number - can remain the same or change
@MEM_ADDRESS = '2308 ranch drive, Louisville KY 40214',       --Manager's home address - can remain the same or change
@LOG_ID = 'donnymike000111',                                  --Manager's log ID - can remain the same or change
@LOCKER_NUM = 01000;                                          --Manager's lokcer number - can remain the same or change
