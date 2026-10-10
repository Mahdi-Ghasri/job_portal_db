# Job Portal Database

## Project Description
A job portal database built with PostgreSQL.
It manages users, companies, jobs, applications, and skills.

## Database Tables
• users
• companies
• jobs
• applications
• skills
• user_skills
• job_skills

## Project Structure
text
job_portal_db/
├── sql/
│   ├── create_database.sql
│   ├── create_tables.sql
│   ├── insert_sample_data.sql
│   └── select_queries.sql
├── .gitignore
└── README.md


## Technologies
• PostgreSQL
• SQL

## Execution Order
1. Run create_database.sql while connected to an existing database.
2. Connect to job_portal_db.
3. Run create_tables.sql.
4. Run insert_sample_data.sql.
5. Run select_queries.sql to test the queries.