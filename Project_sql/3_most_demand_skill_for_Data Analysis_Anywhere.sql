/* 
Question: what is the most in-demand skill for a Data analysis role ?
*/

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



