--This tells SAQL Server Management Studio (SSMS) to use the SRC database
use SRC;										



--This creates the Log In table 
create table Log_In(
	LOG_ID varchar(50) primary key not null,	--This creates the LOG_ID cloumn, desginates LOG_ID as a varchar data type, a primary key, and must contain data
	LOG_PASS varchar(50) not null			--This creates the LOG_PASS cloumn and desginates LOG_PASS as a varchar data type, and must contain data
);



--This creates the Employee table  
create table Employee(
	EMP_ID varchar(50) primary key not null,				--This creats the EMP_ID cloumn, desginates EMP_ID as a varchar data type, a primary key, and must contain data
	EMP_FNAME varchar(50) not null,						--This creates the EMP_FNAME cloumn and desginates EMP_FNAME as a varchar data type, and must contain data
	EMP_LNAME varchar(50),							--This creates the EMP_LNAME cloumn and desginates EMP_LNAME as a varchar data type, and must contain data
	EMP_DOB date not null,							--This creates the EMP_DOB cloumn and desginates EMP_DOB as a date data type, and must contain data
	EMP_EMAIL varchar(50) not null,						--This creates the EMP_EMAIL cloumn and desginates EMP_EMAIL as a varchar data type, and must contain data
	EMP_PASS varchar(50) not null,						--This creates the EMP_PASS cloumn and desginates EMP_PASS as a varchar data type, and must contain data
	EMP_PHONE varchar(50) not null,						--This creates the EMP_PHONE cloumn and desginates EMP_PHONE as a varchar data type, and must contain data
	EMP_ADDRESS varchar(50) not null,					--This creates the EMP_ADDRESS cloumn and desginates EMP_ADDRESS as a varchar data type, and must contain data
	LOG_ID varchar(50) foreign key references LOG_IN(LOG_ID) not null	--This connects the foreign key - LOG_ID - to the Employee table, desginates it as a varchar data type and must contain data

);



--This creates the Manager table 
create table Manager(
	MANAGER_ID varchar(50) primary key not null,				--This creats the MANAGER_ID cloumn, desginates MANAGER_ID as a varchar data type, a primary key, and must contain data
	MANAGER_FNAME varchar(50) not null,					--This creates the MANAGER_FNAME cloumn and desginates MANAGER_FNAME as a varchar data type, and must contain data
	MANAGER_LNAME varchar(50) not null,					--This creates the MANAGER_LNAME cloumn and desginates MANAGER_LNAME as a varchar data type, and must contain data
	MANAGER_DOB date not null,						--This creates the MANAGER_DOB cloumn and desginates MANAGER_DOB as a date data type, and must contain data
	MANAGER_EMAIL varchar(50) not null,					--This creates the MANAGER_EMAIL cloumn and desginates MANAGER_EMAIL as a varchar data type, and must contain data
	MANAGER_PASS varchar(50) not null,					--This creates the MANAGER_PASS cloumn and desginates MANAGER_PASS as a varchar data type, and must contain data
	MANAGER_PHONE varchar(50) not null,					--This creates the MANAGER_PHONE cloumn and desginates MANAGER_PHONE as a varchar data type, and must contain data
	MANAGER_ADDRESS varchar(50) not null,					--This creates the MANAGER_ADDRESS cloumn and desginates MANAGER_ADDRESS as a varchar data type, and must contain data
	LOG_ID varchar(50) foreign key references LOG_IN(LOG_ID) not null	--This connects the foreign key - LOG_ID - to the Manager table, desginates it as a varchar data type and must contain data
);



--This creates the Locker table 
create table Locker(
	LOCKER_NUM int primary key not null,									--This creats the LOCKER_NUM cloumn, desginates LOCKER_NUM as a int data type, a primary key, and must contain data
	EMP_ID varchar(50) foreign key references Employee(EMP_ID) not null		--This connects the foreign key - EMP_ID - to the Locker table, desginates it as a varchar data type and must contain data
);



--This creates the Member table 
create table Member(
	MEM_ID varchar(50) primary key not null,					--This creats the MEM_ID cloumn, desginates MEM_ID as a varchar data type, a primary key, and must contain data
	MEM_FNAME varchar(50) not null,							--This creates the MEM_FNAME cloumn and desginates MEM_FNAME as a varchar data type, and must contain data
	MEM_LNAME varchar(50) not null,							--This creates the MEM_LNAME cloumn and desginates MEM_LNAME as a varchar data type, and must contain data
	MEM_DOB date not null,								--This creates the MEM_DOB cloumn and desginates MEM_DOB as a date data type, and must contain data
	MEM_EMAIL varchar(50) not null,							--This creates the MEM_EMAIL cloumn and desginates MEM_EMAIL as a varchar data type, and must contain data
	MEM_PASS varchar(50) not null,							--This creates the MEM_PASS cloumn and desginates MEM_PASS as a varchar data type, and must contain data
	MEM_PHONE varchar(50) not null,							--This creates the MEM_PHONE cloumn and desginates MEM_PHONE as a varchar data type, and must contain data
	MEM_ADDRESS varchar(50) not null,						--This creates the MEM_ADDRESS cloumn and desginates MEM_ADDRESS as a varchar data type, and must contain data
	LOG_ID varchar(50) foreign key references LOG_IN(LOG_ID) not null,		--This connects the foreign key - LOG_ID - to the Manager table, desginates it as a varchar data type and must contain data
	LOCKER_NUM int foreign key references Locker(LOCKER_NUM)			--This connects the foreign key - LOCKER_NUM - to the Manager table, desginates it as a int data type and must contain data
);



--This creates the Machine table 
create table Machine(
	MACHINE_UOFL_NUM int primary key not null,						--This creats the MACHINE_UOFL_NUM cloumn, desginates MACHINE_UOFL_NUM as a int data type, a primary key, and must contain data
	MACHINE_TYPE varchar(50) not null,								--This creates the MACHINE_TYPE cloumn and desginates MACHINE_TYPE as a varchar data type, and must contain data
	MACHINE_SERIAL_NUM varchar(50) not null,						--This creates the MACHINE_SERIAL_NUM cloumn and desginates MACHINE_SERIAL_NUM as a varchar data type, and must contain data
	MACHINE_PURCHASE_DATE date not null,							--This creates the MACHINE_PURCHASE_DATE cloumn and desginates MACHINE_PURCHASE_DATE as a date data type, and must contain data
	MACHINE_USER_TIME time not null,								--This creates the MACHINE_USER_TIME cloumn and desginates MACHINE_USER_TIME as a time data type, and must contain data
	MACHINE_USER_DISTANCE int not null								--This creates the MACHINE_USER_DISTANCE cloumn and desginates MACHINE_USER_DISTANCE as a int data type, and must contain data
);



--This creates the Tracking table 
create table Tracking(
	COUNT_ROOM varchar(50) primary key not null,					--This creats the COUNT_ROOM cloumn, desginates COUNT_ROOM as a varchar data type, a primary key, and must contain data
	COUNT_NUM int  not null,							--This creates the COUNT_NUM cloumn and desginates COUNT_NUM as a int data type, and must contain data
	COUNT_MALE int not null,							--This creates the COUNT_MALE cloumn and desginates COUNT_MALE as a int data type, and must contain data
	COUNT_FEMALE int not null,							--This creates the COUNT_FEMALE cloumn and desginates COUNT_FEMALE as a int data type, and must contain data
	COUNT_CAUCASIAN int not null,							--This creates the COUNT_CAUCASIAN cloumn and desginates COUNT_CAUCASIAN as a int data type, and must contain data
	COUNT_AFRICAN int not null,							--This creates the COUNT_AFRICAN cloumn and desginates COUNT_AFRICAN as a int data type, and must contain data
	COUNT_OTHER int not null,							--This creates the COUNT_OTHER cloumn and desginates COUNT_OTHER as a int data type, and must contain data
	EMP_ID varchar(50) foreign key references Employee(EMP_ID) not null		--This connects the foreign key - EMP_ID - to the Manager table, desginates it as a varchar data type and must contain data
);



--This creates the Maintenance Record table
create table Maintenance_Record(
	MAINT_NUM int primary key not null,							--This creats the MAINT_NUM cloumn, desginates MAINT_NUM as a int data type, a primary key, and must contain data
	MAINT_DATE date,									--This creates the MAINT_DATE cloumn and desginates MAINT_DATE as a date data type, and must contain data
	MAINT_HANDLE_RAIL varchar(50),								--This creates the MAINT_HANDLE_RAIL cloumn and desginates MAINT_HANDLE_RAIL as a varchar data type, and must contain data
	MAINT_HR_PULSE_MONITOR varchar(50),							--This creates the MAINT_HR_PULSE_MONITOR cloumn and desginates MAINT_HR_PULSE_MONITOR as a varchar data type, and must contain data
	MAINT_BOLT_NUT varchar(50),								--This creates the MAINT_BOLT_NUT cloumn and desginates MAINT_BOLT_NUT as a varchar data type, and must contain data
	MAINT_FOOT_PEDAL varchar(50),								--This creates the MAINT_FOOT_PEDAL cloumn and desginates MAINT_FOOT_PEDAL as a varchar data type, and must contain data
	MAINT_PEDAL varchar(50),								--This creates the MAINT_PEDAL cloumn and desginates MAINT_PEDAL as a varchar data type, and must contain data
	MAINT_SEAT_BACK varchar(50),								--This creates the MAINT_SEAT_BACK cloumn and desginates MAINT_SEAT_BACK as a varchar data type, and must contain data
	MAINT_COMMENT varchar(100),								--This creates the MAINT_COMMENT cloumn and desginates MAINT_COMMENT as a varchar data type, and must contain data
	MAINT_SEAT varchar(50),									--This creates the MAINT_SEAT cloumn and desginates MAINT_SEAT as a varchar data type, and must contain data
	MAINT_CHAIN varchar(50),								--This creates the MAINT_CHAIN cloumn and desginates MAINT_CHAIN as a varchar data type, and must contain data
	MAINT_HANDLE varchar(50),								--This creates the MAINT_HANDLE cloumn and desginates MAINT_HANDLE as a varchar data type, and must contain data
	MAINT_TRACK varchar(50),								--This creates the MAINT_TRACK cloumn and desginates MAINT_TRACK as a varchar data type, and must contain data
	MAINT_DECK varchar(50),									--This creates the MAINT_DECK cloumn and desginates MAINT_DECK as a varchar data type, and must contain data
	MAINT_BELT varchar(50),									--This creates the MAINT_BELT cloumn and desginates MAINT_BELT as a varchar data type, and must contain data
	MAINT_CONSOLE_DISPLAY varchar(50),							--This creates the MAINT_CONSOLE_DISPLAY cloumn and desginates MAINT_CONSOLE_DISPLAY as a varchar data type, and must contain data
	MACHINE_UOFL_NUM int foreign key references Machine(MACHINE_UOFL_NUM) not null,		--This connects the foreign key - MACHINE_UOFL_NUM - to the Maintenance Record table, desginates it as a int data type and must contain data
	EMP_ID varchar(50) foreign key references Employee(EMP_ID) not null			--This connects the foreign key - EMP_ID - to the Maintenance Record table, desginates it as a varchar data type and must contain data
);



--This creates the Membership table
create table Membership(
	MEMSHIP_ID varchar(50) primary key not null,					--This creates the MEMSHIP_ID cloumn, desginates MEMSHIP_ID as a varchar data type, a primary key, and must contain data
	MEMSHIP_LEVEL varchar(50) not null,						--This creates the MEMSHIP_LEVEL cloumn and desginates MEMSHIP_LEVEL as a varchar data type, and must contain data
	MEMSHIP_RATE money not null,							--This creates the MEMSHIP_RATE cloumn and desginates MEMSHIP_RATE as a money data type, and must contain data
	MEMSHIP_DATE_CHARGED date not null,						--This creates the MEMSHIP_DATE_CHARGED cloumn and desginates MEMSHIP_DATE_CHARGED as a date data type, and must contain data
	EMP_ID varchar(50) foreign key references Employee(EMP_ID) not null		--This connects the foreign key - EMP_ID - to the Membership table, desginates it as a varchar data type and must contain data
);



--This creates the Payment table
create table Payment(
	PAY_NUM int primary key not null,						--This creates the PAY_NUM cloumn, desginates PAY_NUM as a int data type, a primary key, and must contain data
	PAY_DATE smalldatetime not null,						--This creates the PAY_DATE cloumn and desginates PAY_DATE as a smalldatetime data type, and must contain data
	PAY_AMT money not null,								--This creates the PAY_AMT cloumn and desginates PAY_AMT as a money data type, and must contain data
	PAY_DESCRIP varchar(50) not null,						--This creates the PAY_DESCRIP cloumn and desginates PAY_DESCRIP as a varchar data type, and must contain data
	MEM_ID varchar(50) foreign key references Member(MEM_ID) not null,		--This connects the foreign key - MEM_ID - to the Payment table, desginates it as a varchar data type and must contain data
	EMP_ID varchar(50) foreign key references Employee(EMP_ID) not null		--This connects the foreign key - EMP_ID - to the Payment table, desginates it as a varchar data type and must contain data
);



--This creates the EMail table
create table EMail(
	EMAIL_NUM int primary key not null,							--This creates the EMAIL_NUM cloumn, desginates EMAIL_NUM as a int data type, a primary key, and must contain data
	EMAIL_TYPE varchar(50) not null,							--This creates the EMAIL_TYPE cloumn and desginates EMAIL_TYPE as a varchar data type, and must contain data
	EMAIL_DATE smalldatetime not null,							--This creates the EMAIL_DATE cloumn and desginates EMAIL_DATE as a smalldatetime data type, and must contain data
	MEMSHIP_ID varchar(50) foreign key references Membership(MEMSHIP_ID) not null,		--This connects the foreign key - MEMSHIP_ID - to the EMail table, desginates it as a varchar data type and must contain data
	MEM_ID varchar(50) foreign key references Member(MEM_ID) not null,			--This connects the foreign key - MEM_ID - to the EMail table, desginates it as a varchar data type and must contain data
	EMP_ID varchar(50) foreign key references Employee(EMP_ID) not null,			--This connects the foreign key - EMP_ID - to the EMail table, desginates it as a varchar data type and must contain data
	MANAGER_ID varchar(50) foreign key references Manager(MANAGER_ID) not null		--This connects the foreign key - MANAGER_ID - to the EMail table, desginates it as a varchar data type and must contain data
);
