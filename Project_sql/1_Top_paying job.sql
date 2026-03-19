/*
Question: What is the top-paying (10) company for data analysis jobs?
*/


select 
    job_id,
    job_title_short,
    job_title,
    salary_year_avg,
    job_location,
    job_posted_date::date,
    name as company_name
from 
    job_postings_fact
LEFT JOIN company_dim on job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL 
ORDER BY
    salary_year_avg DESC
limit 10

