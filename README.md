# About this project

This project was a course group project of CPSC2221 (Data Base Systems) during my study at Langara College. The project involves analysis of project requirements, EER modeling, relational schema mapping, normalization, and writing SQL queries for both MySQL and SQL Server.

This project was awarded Langara Open Student Scholar Prize 2023 (Second-place).

## Project description

There is a dental clinic managed by several dentists. Each dentist receives some patients. For each patient, several appointments are booked on different days and times. Each patient may have one or more insurance policies, which can cover a payment fully or partially. It is assumed that, in most payments, a patient pays partially with one or more insurance policies. We need to store the information of insurance policies of the patients. Each insurance policy under the same insurer has its own unique policy number, but the same number may be used by different insurance companies. Some patients may not have an insurance policy and they pay the expenses from their own pocket. We also need to store the payment history of the patients. A patient may pay all expenses at once or in different installments. Patients can refer to their friends and families and we store this information in the database too.

## Assumptions

- A dentist may have no patient (e.g. when a new dentist joins the clinic).
- A person can only be registered as a patient after making the very first appointment.
- A patient may refer zero or more referees (who are also patients).
- A patient can only have at most one referrer (who is also a patient).
- Each appointment is made between one patient and one dentist.
- One or more services can be provided in one appointment.

## Further information

Please refer to `project-report.pdf` for information about the EER diagram, schema mapping, normalization, domain and constraint determination, and data for testing.

For the SQL code to create tables, insert values, and make queries for testing, please refer to `mysql-scripts` and `sql-server-scripts` respectively. There are 20 queries that are useful demonstration of the project for the end-user of the database. Please note that there are some differences between the queries using MySQL and SQL Server due to different syntaxes and methods supported. Sources found in the research process are included in the comments in the queries scripts.
