# Introduction
📊 looking into data market! Focusing on data analysis role and data engineer, this project explores 💵 top-payong jobs, skills demanded, measures 💹 where high demand meets high salary in data engineer.

🔍 SQL queries? 
Check them out here:
[project_sql folder](/Project_sql/)

# Background
Navigating the data engineer job market effectively, this project aim to point out top_paid and demanded skills required for a data engineer job offers.



### The Question i wanted to answer through my sql queries were:

1. What is the top-paying (10) companuy for data analysis jobs?
2. what are the skill required for these top-paying roles?
3. what is the most in-demand skill for a Data analysis role ?
4. what are the top skills based on salary for a Data Engineer?
5. what are the high demand and high salary skills for a Data Engineer jobs?
6. what is the top 5 skills frequently mentioned and skills_id with the highest count?

# Tools I Used
several tools used to dive ini the data engineer job market includes:

- **Sql**: A language to communicate with database, with commnand to store, process, analyse and lmanipulate datebase.

- **Postgres**:

- **Visual studio code**:

- **Github**:

# The Analysis
Every querie write aims at investigate specfic asoect of data analysis and data engineer job market.
Here is my approach to the questions:

### 1. Top paying Data Analysis jobs
To get the highest paying data analysis jobs i filted average year salary and location, focusing mainly on  job located Anywhere. it highlights the high paying opportunities in data analysis.

```sql
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
```
Here is the breakdown of the top data analysis jobs:


### 2. Top skill required for a top-paying roles

To arrive to get the top skills required for a top-paying role i filted through the skills, average year salary and company with the top-payment per skill.

``` sql
SELECT
    job_postings_fact.job_id,
    skills_dim.skill_id,
    job_title,
    skills,
    salary_year_avg,
    name as company_name
from 
    skills_dim
left join skills_job_dim on skills_dim.skill_id = skills_job_dim.skill_id
left JOIN job_postings_fact on skills_job_dim.job_id = job_postings_fact.job_id
LEFT JOIN company_dim on job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' and 
    salary_year_avg is not null
limit 500
```
Here is the breakdown of the demaned skills for the top 10 highest paying roles:



### 3. Most in-demand skill for a data analysis role 
what i did here is count the job_ids to identify the skills most dmanded for a data analysis roles anywhere

```sql
SELECT
    skills,
    count(skills_job_dim.job_id) as demand_count
from 
    skills_dim
left join skills_job_dim on skills_dim.skill_id = skills_job_dim.skill_id
left JOIN job_postings_fact on skills_job_dim.job_id = job_postings_fact.job_id
WHERE
    job_title_short = 'Data Analyst' and
    job_location = 'Anywhere'
Group BY
    skills
ORDER BY
    demand_count DESC
LIMIT 10
```
Here is breakdown for most demanded skill for a data analysis role anywhere:

### 4. Top skill with the hihgest salary for a data engineer role


```sql
SELECT
    skills,
    round(Avg(salary_year_avg), 0) as average_salary
from 
    skills_dim
left join skills_job_dim on skills_dim.skill_id = skills_job_dim.skill_id
left JOIN job_postings_fact on skills_job_dim.job_id = job_postings_fact.job_id
WHERE
    job_title_short = 'Data Engineer' and 
    salary_year_avg is NOT NULL AND
    job_location = 'Anywhere'
GROUP BY
    skills
Order BY
  average_salary DESC
LIMIT 50
```
Here is the breakdon of the results for tp paying for data engineer:

### 5. The high demand and high salary skils for a data engineer job

```sql
SELECT 
    skills,
    count(skills_job_dim.job_id) as demand_count,
    round(Avg(salary_year_avg), 0) as average_salary
from 
    skills_dim
left join skills_job_dim on skills_dim.skill_id = skills_job_dim.skill_id
left JOIN job_postings_fact on skills_job_dim.job_id = job_postings_fact.job_id
WHERE
    job_title_short = 'Data Engineer' and 
    salary_year_avg is NOT NULL AND
    job_location = 'Anywhere'
GROUP BY
    skills
HAVING
     count(skills_job_dim.job_id) > 20
ORDER BY
    average_salary desc
```

### 6. Top 5 skills frequently mentioned and skills_id with the highest count 

```sql
SELECT
    skills_dim.skills,
    skills_job_dim.skill_id,
    count(skills_job_dim.skill_id) as skills_count
FROM
    skills_job_dim
LEFT JOIN skills_dim on skills_dim.skill_id = skills_job_dim.skill_id
GROUP BY  
    skills_job_dim.skill_id,skills_dim.skills
ORDER BY
    skills_count DESC
LIMIT 5
```

Here is 
# What I learnt

# Conclusions

### Insight


### closing thought
