--This is an INSERT statement. This is one of a few methods to inputting data in the database




--This tells the INSERT statment WHERE to insert the data
--i.e.- insert data in the MEMSHIP_ID column, MEMSHIP_LEVEL column, MEMSHIP_RATE column and so on

INSERT INTO Membership([MEMSHIP_ID], [MEMSHIP_LEVEL], [MEMSHIP_RATE], [MEMSHIP_DATE_CHARGED], [EMP_ID])



--This tells the VALUES statment WHAT to insert in the column
--i.e.- insert  'NelsonMoreno20' in the MEMSHIP_ID cloumn, insert 'Standard Membership' in the MEMSHIP_LEVEL column, $10 in the MEMSHIP_RATE column and so on

VALUES('NelsonMoreno20', 'Standard Membership', $10, '02-01-2020 08:03:00', 'RitaLozano46'),

	  ('SueGill09', 'Ultra Membership', $15, '02-04-2020 08:03:00', 'RyanMorton83'),

	  ('BeverlyBib92', 'Ultra Membership', $15, '02-05-2020 08:03:00', 'AliceMuller65'),

	  ('HelenFaller99', 'Standard Membership', $10, '02-06-2020 08:03:00', 'WilliamStreater81'),

	  ('MaryBrown88', 'Premium Membership', $20, '02-08-2020 08:03:00', 'RichardHawks39'),

	  ('JaredRuth72', 'Ultra Membership', $15, '02-09-2020 08:03:00', 'LindaMiller58'),

	  ('AdamChamber82', 'Standard Membership', $10, '02-09-2020 08:03:00', 'AidaJacobs37'),

	  ('JamesHolder85', 'Standard Membership', $10, '02-11-2020 08:03:00', 'KatGroves29'),

	  ('DebMitchell01', 'Standard Membership', $10, '02-14-2020 08:03:00', 'JanieJacques20'),

	  ('CharlesTovar55', 'Premium Membership', $20, '02-17-2020 08:03:00', 'BrianLeonard17'),

	  ('JamesHaight45', 'Premium Membership', $20, '02-20-2020 08:03:00', 'JohnEmerson74'),

	  ('KatObrein48', 'Standard Membership', $10, '02-20-2020 08:03:00', 'NicoleMore24'),

	  ('EricWitherspoon67', 'Ultra Membership', $15, '02-23-2020 08:03:00', 'DavidBrush91'),

	  ('TonyContreras79', 'Standard Membership', $10, '02-24-2020 08:03:00', 'GlennTodd92'),

	  ('PamHoule93', 'Standard Membership', $10, '02-27-2020 08:03:00', 'RobertoWong04');