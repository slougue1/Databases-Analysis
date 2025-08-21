Create a database that can track some of the worst pandemics and epidemics in the 20th and 21st century. 
Database Description

Logical Design
<img width="700" height="400" alt="image" src="https://github.com/user-attachments/assets/10d35d9a-aafe-4822-8fcc-ed0cf02dc449" />

Pysical Deisgn
Import table with foreign keys like key - disease_id
Used import wizard to import tables relate individual_risk_factors, pandemic_id

Sample Data
Disease Tabel
<img width="800" height="200" alt="image" src="https://github.com/user-attachments/assets/6d6e4e19-3cc4-4271-897d-7395fb9ae069" />

Individual Risk Factors Table:
<img width="300" height="200" alt="image" src="https://github.com/user-attachments/assets/872accc7-ee54-4da3-a603-d026b3db87bc" />

Pandemics Table:
<img width="600" height="200" alt="image" src="https://github.com/user-attachments/assets/1e53b300-4cb0-4634-94ac-00d405be422d" />

Views/Queries
- multiple_pandemics view returns nations that have had more than one pandemic.
- total_cost view returns the amount of money that has been spent in total on each pandemic
(by all nations).
- twentieth_century view returns all pandemics from the 20th century.
- socioecon_risk view returns the name of the socioeconomic group that was most at risk for
each pandemic.
- diseases_in_dense_countries view returns the names of all diseases that have had
pandemics in cities with a greater than average density.
<img width="400" height="200" alt="image" src="https://github.com/user-attachments/assets/15e7af79-5ab3-477d-8306-6cd53317062f" />

