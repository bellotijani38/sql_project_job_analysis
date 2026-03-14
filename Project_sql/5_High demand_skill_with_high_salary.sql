/* 
Question: what are the high demand and high salary skills for a Data Engineer jobs?
*/


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
