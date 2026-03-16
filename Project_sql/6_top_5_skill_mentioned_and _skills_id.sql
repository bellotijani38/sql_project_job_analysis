/*
Quetion: what is the top 5 skills frequently mentioned and skills_id with the highest count?
*/


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