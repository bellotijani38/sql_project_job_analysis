/*
Question: what are the top skills based on salary for a Data Engineer?
*/

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



/*
[
  {
    "skills": "assembly",
    "average_salary": "192500"
  },
  {
    "skills": "mongo",
    "average_salary": "182223"
  },
  {
    "skills": "ggplot2",
    "average_salary": "176250"
  },
  {
    "skills": "rust",
    "average_salary": "172819"
  },
  {
    "skills": "clojure",
    "average_salary": "170867"
  },
  {
    "skills": "perl",
    "average_salary": "169000"
  },
  {
    "skills": "neo4j",
    "average_salary": "166559"
  },
  {
    "skills": "solidity",
    "average_salary": "166250"
  },
  {
    "skills": "graphql",
    "average_salary": "162547"
  },
  {
    "skills": "julia",
    "average_salary": "160500"
  },
  {
    "skills": "splunk",
    "average_salary": "160397"
  },
  {
    "skills": "bitbucket",
    "average_salary": "160333"
  },
  {
    "skills": "zoom",
    "average_salary": "159000"
  },
  {
    "skills": "kubernetes",
    "average_salary": "158190"
  },
  {
    "skills": "numpy",
    "average_salary": "157592"
  },
  {
    "skills": "mxnet",
    "average_salary": "157500"
  },
  {
    "skills": "fastapi",
    "average_salary": "157500"
  },
  {
    "skills": "redis",
    "average_salary": "157000"
  },
  {
    "skills": "trello",
    "average_salary": "155000"
  },
  {
    "skills": "jquery",
    "average_salary": "151667"
  },
  {
    "skills": "express",
    "average_salary": "151636"
  },
  {
    "skills": "cassandra",
    "average_salary": "151282"
  },
  {
    "skills": "unify",
    "average_salary": "151000"
  },
  {
    "skills": "kafka",
    "average_salary": "150549"
  },
  {
    "skills": "vmware",
    "average_salary": "150000"
  },
  {
    "skills": "keras",
    "average_salary": "148698"
  },
  {
    "skills": "tensorflow",
    "average_salary": "148100"
  },
  {
    "skills": "golang",
    "average_salary": "147818"
  },
  {
    "skills": "angular",
    "average_salary": "147021"
  },
  {
    "skills": "terraform",
    "average_salary": "146057"
  },
  {
    "skills": "ansible",
    "average_salary": "145750"
  },
  {
    "skills": "django",
    "average_salary": "145000"
  },
  {
    "skills": "next.js",
    "average_salary": "145000"
  },
  {
    "skills": "pandas",
    "average_salary": "144656"
  },
  {
    "skills": "elasticsearch",
    "average_salary": "144102"
  },
  {
    "skills": "ruby",
    "average_salary": "144000"
  },
  {
    "skills": "node",
    "average_salary": "143778"
  },
  {
    "skills": "unity",
    "average_salary": "143625"
  },
  {
    "skills": "terminal",
    "average_salary": "143167"
  },
  {
    "skills": "aurora",
    "average_salary": "142887"
  },
  {
    "skills": "matplotlib",
    "average_salary": "142823"
  },
  {
    "skills": "pytorch",
    "average_salary": "142254"
  },
  {
    "skills": "css",
    "average_salary": "141929"
  },
  {
    "skills": "scala",
    "average_salary": "141777"
  },
  {
    "skills": "jupyter",
    "average_salary": "141250"
  },
  {
    "skills": "opencv",
    "average_salary": "141250"
  },
  {
    "skills": "heroku",
    "average_salary": "140000"
  },
  {
    "skills": "ibm cloud",
    "average_salary": "140000"
  },
  {
    "skills": "spark",
    "average_salary": "139838"
  },
  {
    "skills": "node.js",
    "average_salary": "139714"
  }
]
*/