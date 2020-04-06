--This is an INSERT statement for inputting data in the Email table. This is one of a few methods to inputting data in the database


--This tells the INSERT statment WHERE to insert the data
--i.e.- inset data in the EMAIL_NUM column, EMAIL_TYPE column and so on

INSERT INTO EMail([EMAIL_NUM], [EMAIL_TYPE], [EMAIL_DATE], [MEMSHIP_ID], [MEM_ID], [EMP_ID], [MANAGER_ID])	




--This tells the VALUES statment WHAT to insert in the column
--i.e.- insert  '84721' in the EMAIL_NUM cloumn, insert 'Account Created' in the EMAIL_TYPE column and so on

VALUES('84721', 'Account Created', '01-20-2020', 'AdamChamber82', 'AdamChamber82', 'AidaJacobs37', 'BarbaraSanders21'),		
	 
	  ('57432','Account Created', '02-12-2020', 'BeverlyBib92', 'BeverlyBib92', 'AliceMuller65', 'WilliamReddick87'),

	  ('16743', 'Payment Confirmed', '03-10-2019', 'CharlesTovar55', 'CharlesTovar55', 'BrianLeonard17', 'CatherineHolms39'),

	  ('86432', 'Payment Confirmed', '03-17-2019', 'DebMitchell01', 'DebMitchell01', 'DavidBrush91', 'DarrlyHartman34'),

	  ('17843', 'Payment Confirmed', '03-29-2019', 'EricWitherspoon67', 'EricWitherspoon67', 'GlennTodd92', 'DavidFleischer47'),

	  ('58375', 'Payment Overdue', '04-05-2019', 'HelenFaller99', 'HelenFaller99', 'JanieJacques20', 'DonCohen38'),

	  ('47635', 'Payment Overdue', '05-26-2019', 'JamesHaight45', 'JamesHaight45', 'JohnEmerson74', 'FedericoDavidson10'),

	  ('24566','Account Created', '05-12-2019', 'JamesHolder85', 'JamesHolder85', 'KatGroves29', 'HeatherJohnson60'),

	  ('36732', 'Account Created', '06-28-2019', 'JaredRuth72', 'JaredRuth72', 'LindaMiller58', 'IdaNicols32'),

	  ('65734', 'Account Created', '07-01-2019', 'KatObrein48', 'KatObrein48', 'NicoleMore24', 'JaneenDavid93'),

	  ('46737', 'Account Created', '08-30-2019', 'MaryBrown88', 'MaryBrown88', 'RichardHawks39', 'JodieTaylor20'),

	  ('34677','Account Created', '09-29-2019', 'NelsonMoreno20', 'NelsonMoreno20', 'RitaLozano46', 'JohnWillaims19'),

	  ('97132','Account Created', '10-11-2019', 'PamHoule93', 'PamHoule93', 'RobertoWong04', 'RonLewis74'),

	  ('18953', 'Account Created', '11-19-2019', 'SueGill09', 'SueGill09', 'RyanMorton83', 'ScottGibbs26'),

	  ('27436', 'Account Created', '12-11-2019', 'TonyContreras79', 'TonyContreras79', 'WilliamStreater81', 'WesleyJones92');