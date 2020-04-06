--This in a insert statement for inputting an tredmill maintenance report into the database 


--This tells the INSERT statment WHERE to insert the data
--i.e.- insert data in the MAINT_NUM column, MAINT_DATE column, MAINT_HANDLE_RAIL column and so on

INSERT INTO Maintenance_Record([MAINT_NUM], [MAINT_DATE], [MAINT_HANDLE_RAIL], [MAINT_HR_PULSE_MONITOR], 
							   [MAINT_BOLT_NUT], [MAINT_COMMENT], [MAINT_TRACK], [MAINT_DECK], [MAINT_BELT], 
							   [MAINT_CONSOLE_DISPLAY], [MACHINE_UOFL_NUM], [EMP_ID])


--This tells the VALUES statment WHAT to insert in the column
--i.e.- insert  '19481' in the MAINT_NUM cloumn, insert '02-23-2019' in the MAINT_DATE column and so on

VALUES ('19481', '02-23-2019', 'Good', 'Good', 'Good', 'TV screen does not turn on', 'Good', 'Good', 'Good', 'Bad', '1', 'AidaJacobs37'),

	   ('14738', '02-28-2019', 'Bad', 'Good', 'Good', 'Handle rail broken', 'Good', 'Good', 'Good', 'Good', '2', 'AliceMuller65'),

	   ('19206', '03-02-2019', 'Good', 'Bad', 'Good', 'Heart rate monitor does not work and belt is not aligned', 'Good', 'Good', 'Bad', 'Good', '3', 'AliceMuller65'),

	   ('18392', '03-12-2019', 'Good', 'Good', 'Good', 'No maintenance necessary', 'Good', 'Good', 'Good', 'Good', '4', 'BrianLeonard17');










--This in the insert statement for inputting an Elliptical maintenance report into the database  

INSERT INTO Maintenance_Record([MAINT_NUM], [MAINT_DATE], [MAINT_HANDLE_RAIL], [MAINT_HR_PULSE_MONITOR], [MAINT_BOLT_NUT], [MAINT_FOOT_PEDAL], [MAINT_PEDAL], 
							   [MAINT_COMMENT], [MAINT_CHAIN], [MAINT_HANDLE], [MAINT_DECK], [MAINT_BELT], [MAINT_CONSOLE_DISPLAY], [MACHINE_UOFL_NUM], 
							   [EMP_ID])

--This in the values statement for inputting a Elliptical maintenance report into the database 

VALUES('10374', '06-10-2019', 'Good', 'Good', 'Bad', 'Good', 'Good', 'Some bolts are lose, needs new bolts', 'Good', 'Good', 'Good', 'Good', 'Good', '5', 'WilliamStreater81'),

	  ('15792', '06-17-2019', 'Good', 'Good', 'Good', 'Good', 'Good', 'Chain makes loud noise', 'Bad', 'Good', 'Good', 'Good', 'Good', '6', 'RitaLozano46'),

	  ('13580', '07-28-2019', 'Good', 'Good', 'Good', 'Good', 'Good', 'No maintenance necessary', 'Good', 'Good', 'Good', 'Good', 'Good', '7', 'DavidBrush91'),

	  ('12934', '09-11-2019', 'Good', 'Good', 'Good', 'Bad', 'Good', 'Foot pedal is jammed and will not move', 'Good', 'Good', 'Good', 'Good', 'Good', '8', 'RobertoWong04');










--This in the INSERT statement for inputting an Stair Stepper maintenance report into the database  

INSERT INTO Maintenance_Record([MAINT_NUM], [MAINT_DATE], [MAINT_HANDLE_RAIL], [MAINT_HR_PULSE_MONITOR], [MAINT_BOLT_NUT], [MAINT_COMMENT], [MAINT_CHAIN], 
							   [MAINT_DECK], [MAINT_BELT], [MAINT_CONSOLE_DISPLAY], [MACHINE_UOFL_NUM], [EMP_ID])


--This in the VALUES statement for inputting an Stair Stepper maintenance report into the database  

VALUES('17109', '11-20-2019', 'Good', 'Good', 'Good', 'Machine is not stable', 'Good', 'Bad', 'Good', 'Good', '9', 'NicoleMore24'),

	  ('16810', '11-27-2019', 'Good', 'Good', 'Good', 'Console and machine will not turn on', 'Good', 'Good', 'Good', 'Bad', '10', 'GlennTodd92'),

	  ('15025', '12-30-2019', 'Good', 'Good', 'Good', 'Stairs will not spin', 'Good', 'Good', 'Bad', 'Good', '11', 'JanieJacques20');










--This in the insert statement for inputting a Exercise Bike maintenance report into the database 

INSERT INTO Maintenance_Record([MAINT_NUM], [MAINT_DATE], [MAINT_HR_PULSE_MONITOR], [MAINT_BOLT_NUT], [MAINT_FOOT_PEDAL], [MAINT_SEAT_BACK],
							   [MAINT_COMMENT], [MAINT_SEAT], [MAINT_CHAIN], [MAINT_HANDLE],  [MAINT_DECK], [MAINT_BELT], [MAINT_CONSOLE_DISPLAY], 
							   [MACHINE_UOFL_NUM], [EMP_ID])


--This in the values statement for inputting a Exercise Bike maintenance report into the database 

VALUES('19610', '04-12-2019', 'Good', 'Good', 'Good', 'Good', 'Handles need new padding', 'Good', 'Good', 'Bad', 'Good', 'Good', 'Good', '12', 'RichardHawks39'),

      ('14250', '04-20-2019', 'Good', 'Good', 'Good', 'Bad', 'Bike needs whole new seat', 'Bad', 'Good', 'Good', 'Good', 'Good', 'Good', '13', 'JohnEmerson74'),

	  ('11139', '05-27-2019', 'Good', 'Good', 'Bad', 'Good', 'Foot pedal broke off of bike', 'Good', 'Good', 'Good', 'Good', 'Good', 'Good', '14', 'KatGroves29'),

	  ('13319', '05-29-2019', 'Good', 'Good', 'Good', 'Good', 'No maintenance necessary', 'Good', 'Good', 'Good', 'Good', 'Good', 'Good', '15', 'RyanMorton83');