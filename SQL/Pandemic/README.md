Create a database that can track some of the worst pandemics and epidemics in the 20th and 21st century. 
Database Description

Logical Design
<img width="975" height="586" alt="image" src="https://github.com/user-attachments/assets/10d35d9a-aafe-4822-8fcc-ed0cf02dc449" />

Pysical Deisgn
Import table with foreign keys like key - disease_id
Used import wizard to import tables relate individual_risk_factors, pandemic_id

Sample Data
Disease Tabel
<img width="811" height="252" alt="image" src="https://github.com/user-attachments/assets/6d6e4e19-3cc4-4271-897d-7395fb9ae069" />

Individual Risk Factors Table:
<img width="449" height="247" alt="image" src="https://github.com/user-attachments/assets/872accc7-ee54-4da3-a603-d026b3db87bc" />

Pandemics Table:
<img width="892" height="244" alt="image" src="https://github.com/user-attachments/assets/1e53b300-4cb0-4634-94ac-00d405be422d" />

Views/Queries
- multiple_pandemics view returns nations that have had more than one pandemic.
- total_cost view returns the amount of money that has been spent in total on each pandemic
(by all nations).
- twentieth_century view returns all pandemics from the 20th century.
- socioecon_risk view returns the name of the socioeconomic group that was most at risk for
each pandemic.
- diseases_in_dense_countries view returns the names of all diseases that have had
pandemics in cities with a greater than average density.
Name	Req. A	Req. B	Req. C	Req. D	Req. E
multiple_pande mics	X	X	X		
total_cost	X	X	X		
twentieth_cent ury		X			
socioecon_risk	X			X	
diseases_city	X	X	X		X
