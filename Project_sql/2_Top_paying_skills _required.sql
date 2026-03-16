/* 
Question: what are the skill required for these top-paying roles?
*/


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
    salary_year_avg is not null
limit 10







/*[
  {
    "job_id": 346379,
    "skill_id": 0,
    "job_title": "Data Analyst",
    "skills": "sql",
    "salary_year_avg": "85000.0",
    "company_name": "Liberty Personnel Services"
  },
  {
    "job_id": 346379,
    "skill_id": 23,
    "job_title": "Data Analyst",
    "skills": "crystal",
    "salary_year_avg": "85000.0",
    "company_name": "Liberty Personnel Services"
  },
  {
    "job_id": 346379,
    "skill_id": 74,
    "job_title": "Data Analyst",
    "skills": "azure",
    "salary_year_avg": "85000.0",
    "company_name": "Liberty Personnel Services"
  },
  {
    "job_id": 346379,
    "skill_id": 183,
    "job_title": "Data Analyst",
    "skills": "power bi",
    "salary_year_avg": "85000.0",
    "company_name": "Liberty Personnel Services"
  },
  {
    "job_id": 346379,
    "skill_id": 197,
    "job_title": "Data Analyst",
    "skills": "ssrs",
    "salary_year_avg": "85000.0",
    "company_name": "Liberty Personnel Services"
  },
  {
    "job_id": 346379,
    "skill_id": 202,
    "job_title": "Data Analyst",
    "skills": "ms access",
    "salary_year_avg": "85000.0",
    "company_name": "Liberty Personnel Services"
  },
  {
    "job_id": 357479,
    "skill_id": 181,
    "job_title": "PMO Analyst ( Project Data Analyst )",
    "skills": "excel",
    "salary_year_avg": "109430.0",
    "company_name": "Verisk"
  },
  {
    "job_id": 357479,
    "skill_id": 196,
    "job_title": "PMO Analyst ( Project Data Analyst )",
    "skills": "powerpoint",
    "salary_year_avg": "109430.0",
    "company_name": "Verisk"
  },
  {
    "job_id": 357479,
    "skill_id": 233,
    "job_title": "PMO Analyst ( Project Data Analyst )",
    "skills": "jira",
    "salary_year_avg": "109430.0",
    "company_name": "Verisk"
  },
  {
    "job_id": 357479,
    "skill_id": 234,
    "job_title": "PMO Analyst ( Project Data Analyst )",
    "skills": "confluence",
    "salary_year_avg": "109430.0",
    "company_name": "Verisk"
  },
  {
    "job_id": 360727,
    "skill_id": 215,
    "job_title": "Health Data Analyst",
    "skills": "flow",
    "salary_year_avg": "100000.0",
    "company_name": "Lucile Packard Children's Hospital Stanford"
  },
  {
    "job_id": 363085,
    "skill_id": 0,
    "job_title": "Lead Business Data Analyst",
    "skills": "sql",
    "salary_year_avg": "133141.5",
    "company_name": "UKG (Ultimate Kronos Group)"
  },
  {
    "job_id": 363085,
    "skill_id": 1,
    "job_title": "Lead Business Data Analyst",
    "skills": "python",
    "salary_year_avg": "133141.5",
    "company_name": "UKG (Ultimate Kronos Group)"
  },
  {
    "job_id": 363085,
    "skill_id": 5,
    "job_title": "Lead Business Data Analyst",
    "skills": "r",
    "salary_year_avg": "133141.5",
    "company_name": "UKG (Ultimate Kronos Group)"
  },
  {
    "job_id": 363085,
    "skill_id": 183,
    "job_title": "Lead Business Data Analyst",
    "skills": "power bi",
    "salary_year_avg": "133141.5",
    "company_name": "UKG (Ultimate Kronos Group)"
  },
  {
    "job_id": 363085,
    "skill_id": 184,
    "job_title": "Lead Business Data Analyst",
    "skills": "dax",
    "salary_year_avg": "133141.5",
    "company_name": "UKG (Ultimate Kronos Group)"
  },
  {
    "job_id": 363085,
    "skill_id": 201,
    "job_title": "Lead Business Data Analyst",
    "skills": "alteryx",
    "salary_year_avg": "133141.5",
    "company_name": "UKG (Ultimate Kronos Group)"
  },
  {
    "job_id": 369089,
    "skill_id": 0,
    "job_title": "2024 Early Career Program: Data Analytics",
    "skills": "sql",
    "salary_year_avg": "80850.0",
    "company_name": "RVO Health"
  },
  {
    "job_id": 369089,
    "skill_id": 1,
    "job_title": "2024 Early Career Program: Data Analytics",
    "skills": "python",
    "salary_year_avg": "80850.0",
    "company_name": "RVO Health"
  },
  {
    "job_id": 369089,
    "skill_id": 5,
    "job_title": "2024 Early Career Program: Data Analytics",
    "skills": "r",
    "salary_year_avg": "80850.0",
    "company_name": "RVO Health"
  },
  {
    "job_id": 369089,
    "skill_id": 93,
    "job_title": "2024 Early Career Program: Data Analytics",
    "skills": "pandas",
    "salary_year_avg": "80850.0",
    "company_name": "RVO Health"
  },
  {
    "job_id": 369089,
    "skill_id": 182,
    "job_title": "2024 Early Career Program: Data Analytics",
    "skills": "tableau",
    "salary_year_avg": "80850.0",
    "company_name": "RVO Health"
  },
  {
    "job_id": 369283,
    "skill_id": 0,
    "job_title": "Data Analyst (Delivery Experience Technology & Product)",
    "skills": "sql",
    "salary_year_avg": "111175.0",
    "company_name": "Allegro"
  },
  {
    "job_id": 369283,
    "skill_id": 1,
    "job_title": "Data Analyst (Delivery Experience Technology & Product)",
    "skills": "python",
    "salary_year_avg": "111175.0",
    "company_name": "Allegro"
  },
  {
    "job_id": 369283,
    "skill_id": 81,
    "job_title": "Data Analyst (Delivery Experience Technology & Product)",
    "skills": "gcp",
    "salary_year_avg": "111175.0",
    "company_name": "Allegro"
  },
  {
    "job_id": 369283,
    "skill_id": 96,
    "job_title": "Data Analyst (Delivery Experience Technology & Product)",
    "skills": "airflow",
    "salary_year_avg": "111175.0",
    "company_name": "Allegro"
  },
  {
    "job_id": 369283,
    "skill_id": 170,
    "job_title": "Data Analyst (Delivery Experience Technology & Product)",
    "skills": "windows",
    "salary_year_avg": "111175.0",
    "company_name": "Allegro"
  },
  {
    "job_id": 369283,
    "skill_id": 182,
    "job_title": "Data Analyst (Delivery Experience Technology & Product)",
    "skills": "tableau",
    "salary_year_avg": "111175.0",
    "company_name": "Allegro"
  },
  {
    "job_id": 369283,
    "skill_id": 185,
    "job_title": "Data Analyst (Delivery Experience Technology & Product)",
    "skills": "looker",
    "salary_year_avg": "111175.0",
    "company_name": "Allegro"
  },
  {
    "job_id": 371106,
    "skill_id": 181,
    "job_title": "Data Analyst",
    "skills": "excel",
    "salary_year_avg": "63000.0",
    "company_name": "Albert Einstein College of Medicine"
  },
  {
    "job_id": 373148,
    "skill_id": 0,
    "job_title": "Data Analyst",
    "skills": "sql",
    "salary_year_avg": "111175.0",
    "company_name": "Farfetch"
  },
  {
    "job_id": 373148,
    "skill_id": 181,
    "job_title": "Data Analyst",
    "skills": "excel",
    "salary_year_avg": "111175.0",
    "company_name": "Farfetch"
  },
  {
    "job_id": 373148,
    "skill_id": 182,
    "job_title": "Data Analyst",
    "skills": "tableau",
    "salary_year_avg": "111175.0",
    "company_name": "Farfetch"
  },
  {
    "job_id": 373148,
    "skill_id": 185,
    "job_title": "Data Analyst",
    "skills": "looker",
    "salary_year_avg": "111175.0",
    "company_name": "Farfetch"
  },
  {
    "job_id": 374175,
    "skill_id": 137,
    "job_title": "Enterprise Data Domain Analyst",
    "skills": "phoenix",
    "salary_year_avg": "120040.0",
    "company_name": "INTEL"
  },
  {
    "job_id": 388990,
    "skill_id": 0,
    "job_title": "Sr. Business Intelligence Engineer",
    "skills": "sql",
    "salary_year_avg": "198875.0",
    "company_name": "TripActions"
  },
  {
    "job_id": 388990,
    "skill_id": 1,
    "job_title": "Sr. Business Intelligence Engineer",
    "skills": "python",
    "salary_year_avg": "198875.0",
    "company_name": "TripActions"
  },
  {
    "job_id": 388990,
    "skill_id": 77,
    "job_title": "Sr. Business Intelligence Engineer",
    "skills": "bigquery",
    "salary_year_avg": "198875.0",
    "company_name": "TripActions"
  },
  {
    "job_id": 388990,
    "skill_id": 78,
    "job_title": "Sr. Business Intelligence Engineer",
    "skills": "redshift",
    "salary_year_avg": "198875.0",
    "company_name": "TripActions"
  },
  {
    "job_id": 388990,
    "skill_id": 80,
    "job_title": "Sr. Business Intelligence Engineer",
    "skills": "snowflake",
    "salary_year_avg": "198875.0",
    "company_name": "TripActions"
  },
  {
    "job_id": 388990,
    "skill_id": 182,
    "job_title": "Sr. Business Intelligence Engineer",
    "skills": "tableau",
    "salary_year_avg": "198875.0",
    "company_name": "TripActions"
  },
  {
    "job_id": 388990,
    "skill_id": 185,
    "job_title": "Sr. Business Intelligence Engineer",
    "skills": "looker",
    "salary_year_avg": "198875.0",
    "company_name": "TripActions"
  },
  {
    "job_id": 394957,
    "skill_id": 0,
    "job_title": "Data Integration Analyst III",
    "skills": "sql",
    "salary_year_avg": "115000.0",
    "company_name": "HealthVerity"
  },
  {
    "job_id": 394957,
    "skill_id": 74,
    "job_title": "Data Integration Analyst III",
    "skills": "azure",
    "salary_year_avg": "115000.0",
    "company_name": "HealthVerity"
  },
  {
    "job_id": 394957,
    "skill_id": 75,
    "job_title": "Data Integration Analyst III",
    "skills": "databricks",
    "salary_year_avg": "115000.0",
    "company_name": "HealthVerity"
  },
  {
    "job_id": 394957,
    "skill_id": 76,
    "job_title": "Data Integration Analyst III",
    "skills": "aws",
    "salary_year_avg": "115000.0",
    "company_name": "HealthVerity"
  },
  {
    "job_id": 394957,
    "skill_id": 92,
    "job_title": "Data Integration Analyst III",
    "skills": "spark",
    "salary_year_avg": "115000.0",
    "company_name": "HealthVerity"
  },
  {
    "job_id": 394957,
    "skill_id": 210,
    "job_title": "Data Integration Analyst III",
    "skills": "git",
    "salary_year_avg": "115000.0",
    "company_name": "HealthVerity"
  },
  {
    "job_id": 394957,
    "skill_id": 211,
    "job_title": "Data Integration Analyst III",
    "skills": "jenkins",
    "salary_year_avg": "115000.0",
    "company_name": "HealthVerity"
  },
  {
    "job_id": 398326,
    "skill_id": 0,
    "job_title": "Data Analyst",
    "skills": "sql",
    "salary_year_avg": "115000.0",
    "company_name": "Accenture"
  },
  {
    "job_id": 398326,
    "skill_id": 1,
    "job_title": "Data Analyst",
    "skills": "python",
    "salary_year_avg": "115000.0",
    "company_name": "Accenture"
  },
  {
    "job_id": 398326,
    "skill_id": 26,
    "job_title": "Data Analyst",
    "skills": "c",
    "salary_year_avg": "115000.0",
    "company_name": "Accenture"
  },
  {
    "job_id": 398326,
    "skill_id": 61,
    "job_title": "Data Analyst",
    "skills": "sql server",
    "salary_year_avg": "115000.0",
    "company_name": "Accenture"
  },
  {
    "job_id": 398326,
    "skill_id": 67,
    "job_title": "Data Analyst",
    "skills": "db2",
    "salary_year_avg": "115000.0",
    "company_name": "Accenture"
  },
  {
    "job_id": 398326,
    "skill_id": 79,
    "job_title": "Data Analyst",
    "skills": "oracle",
    "salary_year_avg": "115000.0",
    "company_name": "Accenture"
  },
  {
    "job_id": 398326,
    "skill_id": 97,
    "job_title": "Data Analyst",
    "skills": "hadoop",
    "salary_year_avg": "115000.0",
    "company_name": "Accenture"
  },
  {
    "job_id": 398326,
    "skill_id": 168,
    "job_title": "Data Analyst",
    "skills": "unix",
    "salary_year_avg": "115000.0",
    "company_name": "Accenture"
  },
  {
    "job_id": 398669,
    "skill_id": 0,
    "job_title": "Experienced Data Analyst",
    "skills": "sql",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 398669,
    "skill_id": 61,
    "job_title": "Experienced Data Analyst",
    "skills": "sql server",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 398669,
    "skill_id": 74,
    "job_title": "Experienced Data Analyst",
    "skills": "azure",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 398669,
    "skill_id": 76,
    "job_title": "Experienced Data Analyst",
    "skills": "aws",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 398669,
    "skill_id": 78,
    "job_title": "Experienced Data Analyst",
    "skills": "redshift",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 398669,
    "skill_id": 80,
    "job_title": "Experienced Data Analyst",
    "skills": "snowflake",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 398669,
    "skill_id": 182,
    "job_title": "Experienced Data Analyst",
    "skills": "tableau",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 398669,
    "skill_id": 185,
    "job_title": "Experienced Data Analyst",
    "skills": "looker",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 398669,
    "skill_id": 194,
    "job_title": "Experienced Data Analyst",
    "skills": "ssis",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 401243,
    "skill_id": 0,
    "job_title": "Remote Data Analyst",
    "skills": "sql",
    "salary_year_avg": "86500.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 401243,
    "skill_id": 79,
    "job_title": "Remote Data Analyst",
    "skills": "oracle",
    "salary_year_avg": "86500.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 411128,
    "skill_id": 181,
    "job_title": "Data Analyst - Carbon and Renewable Energy",
    "skills": "excel",
    "salary_year_avg": "81311.5",
    "company_name": "Apple"
  },
  {
    "job_id": 411128,
    "skill_id": 182,
    "job_title": "Data Analyst - Carbon and Renewable Energy",
    "skills": "tableau",
    "salary_year_avg": "81311.5",
    "company_name": "Apple"
  },
  {
    "job_id": 418672,
    "skill_id": 1,
    "job_title": "Data Analyst",
    "skills": "python",
    "salary_year_avg": "100000.0",
    "company_name": "Beyond Limits"
  },
  {
    "job_id": 418672,
    "skill_id": 8,
    "job_title": "Data Analyst",
    "skills": "go",
    "salary_year_avg": "100000.0",
    "company_name": "Beyond Limits"
  },
  {
    "job_id": 418672,
    "skill_id": 93,
    "job_title": "Data Analyst",
    "skills": "pandas",
    "salary_year_avg": "100000.0",
    "company_name": "Beyond Limits"
  },
  {
    "job_id": 418672,
    "skill_id": 94,
    "job_title": "Data Analyst",
    "skills": "numpy",
    "salary_year_avg": "100000.0",
    "company_name": "Beyond Limits"
  },
  {
    "job_id": 418672,
    "skill_id": 106,
    "job_title": "Data Analyst",
    "skills": "scikit-learn",
    "salary_year_avg": "100000.0",
    "company_name": "Beyond Limits"
  },
  {
    "job_id": 418672,
    "skill_id": 108,
    "job_title": "Data Analyst",
    "skills": "matplotlib",
    "salary_year_avg": "100000.0",
    "company_name": "Beyond Limits"
  },
  {
    "job_id": 418672,
    "skill_id": 112,
    "job_title": "Data Analyst",
    "skills": "plotly",
    "salary_year_avg": "100000.0",
    "company_name": "Beyond Limits"
  },
  {
    "job_id": 427343,
    "skill_id": 0,
    "job_title": "Data Delivery Analyst",
    "skills": "sql",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 427343,
    "skill_id": 1,
    "job_title": "Data Delivery Analyst",
    "skills": "python",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 427343,
    "skill_id": 5,
    "job_title": "Data Delivery Analyst",
    "skills": "r",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 431949,
    "skill_id": 181,
    "job_title": "Consultant Financial Data Analyst (Atlanta, GA)",
    "skills": "excel",
    "salary_year_avg": "70000.0",
    "company_name": "WNA Ltd"
  },
  {
    "job_id": 431949,
    "skill_id": 183,
    "job_title": "Consultant Financial Data Analyst (Atlanta, GA)",
    "skills": "power bi",
    "salary_year_avg": "70000.0",
    "company_name": "WNA Ltd"
  },
  {
    "job_id": 431949,
    "skill_id": 190,
    "job_title": "Consultant Financial Data Analyst (Atlanta, GA)",
    "skills": "spreadsheet",
    "salary_year_avg": "70000.0",
    "company_name": "WNA Ltd"
  },
  {
    "job_id": 431949,
    "skill_id": 196,
    "job_title": "Consultant Financial Data Analyst (Atlanta, GA)",
    "skills": "powerpoint",
    "salary_year_avg": "70000.0",
    "company_name": "WNA Ltd"
  },
  {
    "job_id": 431949,
    "skill_id": 204,
    "job_title": "Consultant Financial Data Analyst (Atlanta, GA)",
    "skills": "visio",
    "salary_year_avg": "70000.0",
    "company_name": "WNA Ltd"
  },
  {
    "job_id": 432310,
    "skill_id": 0,
    "job_title": "Junior Business/Data Analyst",
    "skills": "sql",
    "salary_year_avg": "72000.0",
    "company_name": "Get It Recruit - Transportation"
  },
  {
    "job_id": 432310,
    "skill_id": 2,
    "job_title": "Junior Business/Data Analyst",
    "skills": "nosql",
    "salary_year_avg": "72000.0",
    "company_name": "Get It Recruit - Transportation"
  },
  {
    "job_id": 440329,
    "skill_id": 0,
    "job_title": "Data Analyst",
    "skills": "sql",
    "salary_year_avg": "100000.0",
    "company_name": "RAPPI"
  },
  {
    "job_id": 440329,
    "skill_id": 1,
    "job_title": "Data Analyst",
    "skills": "python",
    "salary_year_avg": "100000.0",
    "company_name": "RAPPI"
  },
  {
    "job_id": 440329,
    "skill_id": 181,
    "job_title": "Data Analyst",
    "skills": "excel",
    "salary_year_avg": "100000.0",
    "company_name": "RAPPI"
  },
  {
    "job_id": 440329,
    "skill_id": 183,
    "job_title": "Data Analyst",
    "skills": "power bi",
    "salary_year_avg": "100000.0",
    "company_name": "RAPPI"
  },
  {
    "job_id": 443147,
    "skill_id": 1,
    "job_title": "Data Analyst",
    "skills": "python",
    "salary_year_avg": "100000.0",
    "company_name": "ADP"
  },
  {
    "job_id": 443147,
    "skill_id": 4,
    "job_title": "Data Analyst",
    "skills": "java",
    "salary_year_avg": "100000.0",
    "company_name": "ADP"
  },
  {
    "job_id": 443147,
    "skill_id": 8,
    "job_title": "Data Analyst",
    "skills": "go",
    "salary_year_avg": "100000.0",
    "company_name": "ADP"
  },
  {
    "job_id": 443147,
    "skill_id": 93,
    "job_title": "Data Analyst",
    "skills": "pandas",
    "salary_year_avg": "100000.0",
    "company_name": "ADP"
  },
  {
    "job_id": 443147,
    "skill_id": 94,
    "job_title": "Data Analyst",
    "skills": "numpy",
    "salary_year_avg": "100000.0",
    "company_name": "ADP"
  },
  {
    "job_id": 443147,
    "skill_id": 99,
    "job_title": "Data Analyst",
    "skills": "tensorflow",
    "salary_year_avg": "100000.0",
    "company_name": "ADP"
  },
  {
    "job_id": 443147,
    "skill_id": 101,
    "job_title": "Data Analyst",
    "skills": "pytorch",
    "salary_year_avg": "100000.0",
    "company_name": "ADP"
  },
  {
    "job_id": 443147,
    "skill_id": 106,
    "job_title": "Data Analyst",
    "skills": "scikit-learn",
    "salary_year_avg": "100000.0",
    "company_name": "ADP"
  },
  {
    "job_id": 443147,
    "skill_id": 109,
    "job_title": "Data Analyst",
    "skills": "mxnet",
    "salary_year_avg": "100000.0",
    "company_name": "ADP"
  },
  {
    "job_id": 443147,
    "skill_id": 118,
    "job_title": "Data Analyst",
    "skills": "theano",
    "salary_year_avg": "100000.0",
    "company_name": "ADP"
  },
  {
    "job_id": 443147,
    "skill_id": 133,
    "job_title": "Data Analyst",
    "skills": "chainer",
    "salary_year_avg": "100000.0",
    "company_name": "ADP"
  },
  {
    "job_id": 443147,
    "skill_id": 181,
    "job_title": "Data Analyst",
    "skills": "excel",
    "salary_year_avg": "100000.0",
    "company_name": "ADP"
  },
  {
    "job_id": 463381,
    "skill_id": 0,
    "job_title": "Data Analyst (Junior/Mid/Senior) - Remote - Defense Manpower Data...",
    "skills": "sql",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 463381,
    "skill_id": 16,
    "job_title": "Data Analyst (Junior/Mid/Senior) - Remote - Defense Manpower Data...",
    "skills": "t-sql",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 463381,
    "skill_id": 79,
    "job_title": "Data Analyst (Junior/Mid/Senior) - Remote - Defense Manpower Data...",
    "skills": "oracle",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 475854,
    "skill_id": 0,
    "job_title": "Business Systems & Data Analyst - Data Solutions & Initiatives",
    "skills": "sql",
    "salary_year_avg": "115000.0",
    "company_name": "Apple"
  },
  {
    "job_id": 475854,
    "skill_id": 182,
    "job_title": "Business Systems & Data Analyst - Data Solutions & Initiatives",
    "skills": "tableau",
    "salary_year_avg": "115000.0",
    "company_name": "Apple"
  },
  {
    "job_id": 488148,
    "skill_id": 0,
    "job_title": "Data Production Analyst (Consumer Panel Services GfK)",
    "skills": "sql",
    "salary_year_avg": "48600.0",
    "company_name": "GfK"
  },
  {
    "job_id": 488148,
    "skill_id": 1,
    "job_title": "Data Production Analyst (Consumer Panel Services GfK)",
    "skills": "python",
    "salary_year_avg": "48600.0",
    "company_name": "GfK"
  },
  {
    "job_id": 488148,
    "skill_id": 181,
    "job_title": "Data Production Analyst (Consumer Panel Services GfK)",
    "skills": "excel",
    "salary_year_avg": "48600.0",
    "company_name": "GfK"
  },
  {
    "job_id": 488148,
    "skill_id": 183,
    "job_title": "Data Production Analyst (Consumer Panel Services GfK)",
    "skills": "power bi",
    "salary_year_avg": "48600.0",
    "company_name": "GfK"
  },
  {
    "job_id": 488148,
    "skill_id": 199,
    "job_title": "Data Production Analyst (Consumer Panel Services GfK)",
    "skills": "spss",
    "salary_year_avg": "48600.0",
    "company_name": "GfK"
  },
  {
    "job_id": 492240,
    "skill_id": 92,
    "job_title": "Growth Data Manager",
    "skills": "spark",
    "salary_year_avg": "105650.0",
    "company_name": "Publicis Groupe"
  },
  {
    "job_id": 494426,
    "skill_id": 0,
    "job_title": "Technical Lead - Data Analysis",
    "skills": "sql",
    "salary_year_avg": "140500.0",
    "company_name": "TIAA"
  },
  {
    "job_id": 494426,
    "skill_id": 1,
    "job_title": "Technical Lead - Data Analysis",
    "skills": "python",
    "salary_year_avg": "140500.0",
    "company_name": "TIAA"
  },
  {
    "job_id": 494426,
    "skill_id": 79,
    "job_title": "Technical Lead - Data Analysis",
    "skills": "oracle",
    "salary_year_avg": "140500.0",
    "company_name": "TIAA"
  },
  {
    "job_id": 494426,
    "skill_id": 168,
    "job_title": "Technical Lead - Data Analysis",
    "skills": "unix",
    "salary_year_avg": "140500.0",
    "company_name": "TIAA"
  },
  {
    "job_id": 494426,
    "skill_id": 170,
    "job_title": "Technical Lead - Data Analysis",
    "skills": "windows",
    "salary_year_avg": "140500.0",
    "company_name": "TIAA"
  },
  {
    "job_id": 496498,
    "skill_id": 0,
    "job_title": "Audit Data Analytics & System Development",
    "skills": "sql",
    "salary_year_avg": "64800.0",
    "company_name": "Amartha"
  },
  {
    "job_id": 496498,
    "skill_id": 61,
    "job_title": "Audit Data Analytics & System Development",
    "skills": "sql server",
    "salary_year_avg": "64800.0",
    "company_name": "Amartha"
  },
  {
    "job_id": 496498,
    "skill_id": 181,
    "job_title": "Audit Data Analytics & System Development",
    "skills": "excel",
    "salary_year_avg": "64800.0",
    "company_name": "Amartha"
  },
  {
    "job_id": 496498,
    "skill_id": 188,
    "job_title": "Audit Data Analytics & System Development",
    "skills": "word",
    "salary_year_avg": "64800.0",
    "company_name": "Amartha"
  },
  {
    "job_id": 496498,
    "skill_id": 196,
    "job_title": "Audit Data Analytics & System Development",
    "skills": "powerpoint",
    "salary_year_avg": "64800.0",
    "company_name": "Amartha"
  },
  {
    "job_id": 502437,
    "skill_id": 196,
    "job_title": "Student Assistant for Data Management (m/f/d)",
    "skills": "powerpoint",
    "salary_year_avg": "56700.0",
    "company_name": "Nets"
  },
  {
    "job_id": 510600,
    "skill_id": 0,
    "job_title": "Data Analyst",
    "skills": "sql",
    "salary_year_avg": "65350.0",
    "company_name": "Fenway Health"
  },
  {
    "job_id": 510600,
    "skill_id": 181,
    "job_title": "Data Analyst",
    "skills": "excel",
    "salary_year_avg": "65350.0",
    "company_name": "Fenway Health"
  },
  {
    "job_id": 510600,
    "skill_id": 182,
    "job_title": "Data Analyst",
    "skills": "tableau",
    "salary_year_avg": "65350.0",
    "company_name": "Fenway Health"
  },
  {
    "job_id": 521352,
    "skill_id": 0,
    "job_title": "Data Analyst - Ads and Promo Platform",
    "skills": "sql",
    "salary_year_avg": "57500.0",
    "company_name": "GoTo Group"
  },
  {
    "job_id": 521352,
    "skill_id": 1,
    "job_title": "Data Analyst - Ads and Promo Platform",
    "skills": "python",
    "salary_year_avg": "57500.0",
    "company_name": "GoTo Group"
  },
  {
    "job_id": 521352,
    "skill_id": 77,
    "job_title": "Data Analyst - Ads and Promo Platform",
    "skills": "bigquery",
    "salary_year_avg": "57500.0",
    "company_name": "GoTo Group"
  },
  {
    "job_id": 521352,
    "skill_id": 220,
    "job_title": "Data Analyst - Ads and Promo Platform",
    "skills": "gitlab",
    "salary_year_avg": "57500.0",
    "company_name": "GoTo Group"
  },
  {
    "job_id": 521352,
    "skill_id": 237,
    "job_title": "Data Analyst - Ads and Promo Platform",
    "skills": "asana",
    "salary_year_avg": "57500.0",
    "company_name": "GoTo Group"
  },
  {
    "job_id": 521352,
    "skill_id": 247,
    "job_title": "Data Analyst - Ads and Promo Platform",
    "skills": "slack",
    "salary_year_avg": "57500.0",
    "company_name": "GoTo Group"
  },
  {
    "job_id": 522268,
    "skill_id": 181,
    "job_title": "Data Analyst",
    "skills": "excel",
    "salary_year_avg": "102500.0",
    "company_name": "Verisk"
  },
  {
    "job_id": 524098,
    "skill_id": 1,
    "job_title": "Data Architect",
    "skills": "python",
    "salary_year_avg": "163782.0",
    "company_name": "PwC Greece"
  },
  {
    "job_id": 524098,
    "skill_id": 5,
    "job_title": "Data Architect",
    "skills": "r",
    "salary_year_avg": "163782.0",
    "company_name": "PwC Greece"
  },
  {
    "job_id": 524098,
    "skill_id": 74,
    "job_title": "Data Architect",
    "skills": "azure",
    "salary_year_avg": "163782.0",
    "company_name": "PwC Greece"
  },
  {
    "job_id": 524098,
    "skill_id": 76,
    "job_title": "Data Architect",
    "skills": "aws",
    "salary_year_avg": "163782.0",
    "company_name": "PwC Greece"
  },
  {
    "job_id": 524098,
    "skill_id": 215,
    "job_title": "Data Architect",
    "skills": "flow",
    "salary_year_avg": "163782.0",
    "company_name": "PwC Greece"
  },
  {
    "job_id": 524399,
    "skill_id": 0,
    "job_title": "Data Analyst",
    "skills": "sql",
    "salary_year_avg": "93950.0",
    "company_name": "DISH"
  },
  {
    "job_id": 524399,
    "skill_id": 1,
    "job_title": "Data Analyst",
    "skills": "python",
    "salary_year_avg": "93950.0",
    "company_name": "DISH"
  },
  {
    "job_id": 524399,
    "skill_id": 5,
    "job_title": "Data Analyst",
    "skills": "r",
    "salary_year_avg": "93950.0",
    "company_name": "DISH"
  },
  {
    "job_id": 524399,
    "skill_id": 102,
    "job_title": "Data Analyst",
    "skills": "jupyter",
    "salary_year_avg": "93950.0",
    "company_name": "DISH"
  },
  {
    "job_id": 524399,
    "skill_id": 181,
    "job_title": "Data Analyst",
    "skills": "excel",
    "salary_year_avg": "93950.0",
    "company_name": "DISH"
  },
  {
    "job_id": 524399,
    "skill_id": 182,
    "job_title": "Data Analyst",
    "skills": "tableau",
    "salary_year_avg": "93950.0",
    "company_name": "DISH"
  },
  {
    "job_id": 531234,
    "skill_id": 0,
    "job_title": "Data Analyst",
    "skills": "sql",
    "salary_year_avg": "115000.0",
    "company_name": "AppFolio"
  },
  {
    "job_id": 531234,
    "skill_id": 1,
    "job_title": "Data Analyst",
    "skills": "python",
    "salary_year_avg": "115000.0",
    "company_name": "AppFolio"
  },
  {
    "job_id": 531234,
    "skill_id": 5,
    "job_title": "Data Analyst",
    "skills": "r",
    "salary_year_avg": "115000.0",
    "company_name": "AppFolio"
  },
  {
    "job_id": 531234,
    "skill_id": 181,
    "job_title": "Data Analyst",
    "skills": "excel",
    "salary_year_avg": "115000.0",
    "company_name": "AppFolio"
  },
  {
    "job_id": 531234,
    "skill_id": 182,
    "job_title": "Data Analyst",
    "skills": "tableau",
    "salary_year_avg": "115000.0",
    "company_name": "AppFolio"
  },
  {
    "job_id": 532696,
    "skill_id": 188,
    "job_title": "Data Analyst",
    "skills": "word",
    "salary_year_avg": "60000.0",
    "company_name": "City of Columbus, GA"
  },
  {
    "job_id": 532696,
    "skill_id": 190,
    "job_title": "Data Analyst",
    "skills": "spreadsheet",
    "salary_year_avg": "60000.0",
    "company_name": "City of Columbus, GA"
  },
  {
    "job_id": 532696,
    "skill_id": 226,
    "job_title": "Data Analyst",
    "skills": "terminal",
    "salary_year_avg": "60000.0",
    "company_name": "City of Columbus, GA"
  },
  {
    "job_id": 547094,
    "skill_id": 0,
    "job_title": "Data Analyst. Job in Eglin Afb FOX8 Jobs",
    "skills": "sql",
    "salary_year_avg": "85600.0",
    "company_name": "Booz Allen Hamilton"
  },
  {
    "job_id": 547094,
    "skill_id": 1,
    "job_title": "Data Analyst. Job in Eglin Afb FOX8 Jobs",
    "skills": "python",
    "salary_year_avg": "85600.0",
    "company_name": "Booz Allen Hamilton"
  },
  {
    "job_id": 547094,
    "skill_id": 5,
    "job_title": "Data Analyst. Job in Eglin Afb FOX8 Jobs",
    "skills": "r",
    "salary_year_avg": "85600.0",
    "company_name": "Booz Allen Hamilton"
  },
  {
    "job_id": 547094,
    "skill_id": 96,
    "job_title": "Data Analyst. Job in Eglin Afb FOX8 Jobs",
    "skills": "airflow",
    "salary_year_avg": "85600.0",
    "company_name": "Booz Allen Hamilton"
  },
  {
    "job_id": 547094,
    "skill_id": 182,
    "job_title": "Data Analyst. Job in Eglin Afb FOX8 Jobs",
    "skills": "tableau",
    "salary_year_avg": "85600.0",
    "company_name": "Booz Allen Hamilton"
  },
  {
    "job_id": 547094,
    "skill_id": 183,
    "job_title": "Data Analyst. Job in Eglin Afb FOX8 Jobs",
    "skills": "power bi",
    "salary_year_avg": "85600.0",
    "company_name": "Booz Allen Hamilton"
  },
  {
    "job_id": 578176,
    "skill_id": 181,
    "job_title": "Data Operations Analyst (Dublin or Paris)",
    "skills": "excel",
    "salary_year_avg": "80850.0",
    "company_name": "PartnerRe"
  },
  {
    "job_id": 585210,
    "skill_id": 0,
    "job_title": "Data Analyst",
    "skills": "sql",
    "salary_year_avg": "115000.0",
    "company_name": "American Red Cross"
  },
  {
    "job_id": 585210,
    "skill_id": 1,
    "job_title": "Data Analyst",
    "skills": "python",
    "salary_year_avg": "115000.0",
    "company_name": "American Red Cross"
  },
  {
    "job_id": 585210,
    "skill_id": 5,
    "job_title": "Data Analyst",
    "skills": "r",
    "salary_year_avg": "115000.0",
    "company_name": "American Red Cross"
  },
  {
    "job_id": 585210,
    "skill_id": 226,
    "job_title": "Data Analyst",
    "skills": "terminal",
    "salary_year_avg": "115000.0",
    "company_name": "American Red Cross"
  },
  {
    "job_id": 586565,
    "skill_id": 0,
    "job_title": "Data Analyst(AML & Fraud)",
    "skills": "sql",
    "salary_year_avg": "90000.0",
    "company_name": "Open Systems Technologies"
  },
  {
    "job_id": 586565,
    "skill_id": 7,
    "job_title": "Data Analyst(AML & Fraud)",
    "skills": "sas",
    "salary_year_avg": "90000.0",
    "company_name": "Open Systems Technologies"
  },
  {
    "job_id": 586565,
    "skill_id": 186,
    "job_title": "Data Analyst(AML & Fraud)",
    "skills": "sas",
    "salary_year_avg": "90000.0",
    "company_name": "Open Systems Technologies"
  },
  {
    "job_id": 586565,
    "skill_id": 233,
    "job_title": "Data Analyst(AML & Fraud)",
    "skills": "jira",
    "salary_year_avg": "90000.0",
    "company_name": "Open Systems Technologies"
  },
  {
    "job_id": 594173,
    "skill_id": 79,
    "job_title": "Data Analyst",
    "skills": "oracle",
    "salary_year_avg": "60000.0",
    "company_name": "Wildcat"
  },
  {
    "job_id": 594173,
    "skill_id": 181,
    "job_title": "Data Analyst",
    "skills": "excel",
    "salary_year_avg": "60000.0",
    "company_name": "Wildcat"
  },
  {
    "job_id": 594173,
    "skill_id": 188,
    "job_title": "Data Analyst",
    "skills": "word",
    "salary_year_avg": "60000.0",
    "company_name": "Wildcat"
  },
  {
    "job_id": 594173,
    "skill_id": 204,
    "job_title": "Data Analyst",
    "skills": "visio",
    "salary_year_avg": "60000.0",
    "company_name": "Wildcat"
  },
  {
    "job_id": 597886,
    "skill_id": 195,
    "job_title": "Aerospace Data Analyst 1",
    "skills": "sharepoint",
    "salary_year_avg": "60000.0",
    "company_name": "Optimized Technical Solutions"
  },
  {
    "job_id": 597886,
    "skill_id": 226,
    "job_title": "Aerospace Data Analyst 1",
    "skills": "terminal",
    "salary_year_avg": "60000.0",
    "company_name": "Optimized Technical Solutions"
  },
  {
    "job_id": 599535,
    "skill_id": 0,
    "job_title": "Data Analyst",
    "skills": "sql",
    "salary_year_avg": "117000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 599535,
    "skill_id": 1,
    "job_title": "Data Analyst",
    "skills": "python",
    "salary_year_avg": "117000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 599535,
    "skill_id": 182,
    "job_title": "Data Analyst",
    "skills": "tableau",
    "salary_year_avg": "117000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 599535,
    "skill_id": 185,
    "job_title": "Data Analyst",
    "skills": "looker",
    "salary_year_avg": "117000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 601909,
    "skill_id": 0,
    "job_title": "Process and Data Analyst",
    "skills": "sql",
    "salary_year_avg": "111175.0",
    "company_name": "Bosch Group"
  },
  {
    "job_id": 601909,
    "skill_id": 1,
    "job_title": "Process and Data Analyst",
    "skills": "python",
    "salary_year_avg": "111175.0",
    "company_name": "Bosch Group"
  },
  {
    "job_id": 601909,
    "skill_id": 189,
    "job_title": "Process and Data Analyst",
    "skills": "sap",
    "salary_year_avg": "111175.0",
    "company_name": "Bosch Group"
  },
  {
    "job_id": 606788,
    "skill_id": 0,
    "job_title": "Data Analytics and Reporting Analyst",
    "skills": "sql",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 606788,
    "skill_id": 61,
    "job_title": "Data Analytics and Reporting Analyst",
    "skills": "sql server",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 606788,
    "skill_id": 80,
    "job_title": "Data Analytics and Reporting Analyst",
    "skills": "snowflake",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 606788,
    "skill_id": 182,
    "job_title": "Data Analytics and Reporting Analyst",
    "skills": "tableau",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 606788,
    "skill_id": 197,
    "job_title": "Data Analytics and Reporting Analyst",
    "skills": "ssrs",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 635403,
    "skill_id": 189,
    "job_title": "Financial Data Analyst",
    "skills": "sap",
    "salary_year_avg": "107250.0",
    "company_name": "Siemens Digital Industries Software"
  },
  {
    "job_id": 667838,
    "skill_id": 0,
    "job_title": "Sr. Data Analyst",
    "skills": "sql",
    "salary_year_avg": "97500.0",
    "company_name": "SteadyMD"
  },
  {
    "job_id": 667838,
    "skill_id": 1,
    "job_title": "Sr. Data Analyst",
    "skills": "python",
    "salary_year_avg": "97500.0",
    "company_name": "SteadyMD"
  },
  {
    "job_id": 667838,
    "skill_id": 182,
    "job_title": "Sr. Data Analyst",
    "skills": "tableau",
    "salary_year_avg": "97500.0",
    "company_name": "SteadyMD"
  },
  {
    "job_id": 667838,
    "skill_id": 185,
    "job_title": "Sr. Data Analyst",
    "skills": "looker",
    "salary_year_avg": "97500.0",
    "company_name": "SteadyMD"
  },
  {
    "job_id": 677914,
    "skill_id": 181,
    "job_title": "Junior Operations and Data Analyst",
    "skills": "excel",
    "salary_year_avg": "51014.0",
    "company_name": "capital.com"
  },
  {
    "job_id": 686507,
    "skill_id": 0,
    "job_title": "Data Analyst",
    "skills": "sql",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 686507,
    "skill_id": 1,
    "job_title": "Data Analyst",
    "skills": "python",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 686507,
    "skill_id": 5,
    "job_title": "Data Analyst",
    "skills": "r",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 686507,
    "skill_id": 74,
    "job_title": "Data Analyst",
    "skills": "azure",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 690438,
    "skill_id": 0,
    "job_title": "Risk Adjustment Data Analytics Lead",
    "skills": "sql",
    "salary_year_avg": "95150.0",
    "company_name": "CVS Health"
  },
  {
    "job_id": 690438,
    "skill_id": 7,
    "job_title": "Risk Adjustment Data Analytics Lead",
    "skills": "sas",
    "salary_year_avg": "95150.0",
    "company_name": "CVS Health"
  },
  {
    "job_id": 690438,
    "skill_id": 181,
    "job_title": "Risk Adjustment Data Analytics Lead",
    "skills": "excel",
    "salary_year_avg": "95150.0",
    "company_name": "CVS Health"
  },
  {
    "job_id": 690438,
    "skill_id": 186,
    "job_title": "Risk Adjustment Data Analytics Lead",
    "skills": "sas",
    "salary_year_avg": "95150.0",
    "company_name": "CVS Health"
  },
  {
    "job_id": 707689,
    "skill_id": 0,
    "job_title": "Epic Chronicles Database Analyst",
    "skills": "sql",
    "salary_year_avg": "103000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 719006,
    "skill_id": 0,
    "job_title": "Data Analyst - Call Center",
    "skills": "sql",
    "salary_year_avg": "59500.0",
    "company_name": "Suncoast Credit Union"
  },
  {
    "job_id": 719006,
    "skill_id": 1,
    "job_title": "Data Analyst - Call Center",
    "skills": "python",
    "salary_year_avg": "59500.0",
    "company_name": "Suncoast Credit Union"
  },
  {
    "job_id": 719006,
    "skill_id": 181,
    "job_title": "Data Analyst - Call Center",
    "skills": "excel",
    "salary_year_avg": "59500.0",
    "company_name": "Suncoast Credit Union"
  },
  {
    "job_id": 720166,
    "skill_id": 0,
    "job_title": "Data Analytics Lead Audit Manager - Consumer and Small Business...",
    "skills": "sql",
    "salary_year_avg": "150000.0",
    "company_name": "Wells Fargo"
  },
  {
    "job_id": 720166,
    "skill_id": 7,
    "job_title": "Data Analytics Lead Audit Manager - Consumer and Small Business...",
    "skills": "sas",
    "salary_year_avg": "150000.0",
    "company_name": "Wells Fargo"
  },
  {
    "job_id": 720166,
    "skill_id": 186,
    "job_title": "Data Analytics Lead Audit Manager - Consumer and Small Business...",
    "skills": "sas",
    "salary_year_avg": "150000.0",
    "company_name": "Wells Fargo"
  },
  {
    "job_id": 722135,
    "skill_id": 0,
    "job_title": "Business Intelligence Manager / Big data (F/H)",
    "skills": "sql",
    "salary_year_avg": "89100.0",
    "company_name": "ASI"
  },
  {
    "job_id": 722135,
    "skill_id": 1,
    "job_title": "Business Intelligence Manager / Big data (F/H)",
    "skills": "python",
    "salary_year_avg": "89100.0",
    "company_name": "ASI"
  },
  {
    "job_id": 722135,
    "skill_id": 4,
    "job_title": "Business Intelligence Manager / Big data (F/H)",
    "skills": "java",
    "salary_year_avg": "89100.0",
    "company_name": "ASI"
  },
  {
    "job_id": 722135,
    "skill_id": 74,
    "job_title": "Business Intelligence Manager / Big data (F/H)",
    "skills": "azure",
    "salary_year_avg": "89100.0",
    "company_name": "ASI"
  },
  {
    "job_id": 722135,
    "skill_id": 76,
    "job_title": "Business Intelligence Manager / Big data (F/H)",
    "skills": "aws",
    "salary_year_avg": "89100.0",
    "company_name": "ASI"
  },
  {
    "job_id": 722135,
    "skill_id": 80,
    "job_title": "Business Intelligence Manager / Big data (F/H)",
    "skills": "snowflake",
    "salary_year_avg": "89100.0",
    "company_name": "ASI"
  },
  {
    "job_id": 722135,
    "skill_id": 97,
    "job_title": "Business Intelligence Manager / Big data (F/H)",
    "skills": "hadoop",
    "salary_year_avg": "89100.0",
    "company_name": "ASI"
  },
  {
    "job_id": 722135,
    "skill_id": 210,
    "job_title": "Business Intelligence Manager / Big data (F/H)",
    "skills": "git",
    "salary_year_avg": "89100.0",
    "company_name": "ASI"
  },
  {
    "job_id": 722135,
    "skill_id": 211,
    "job_title": "Business Intelligence Manager / Big data (F/H)",
    "skills": "jenkins",
    "salary_year_avg": "89100.0",
    "company_name": "ASI"
  },
  {
    "job_id": 722135,
    "skill_id": 213,
    "job_title": "Business Intelligence Manager / Big data (F/H)",
    "skills": "kubernetes",
    "salary_year_avg": "89100.0",
    "company_name": "ASI"
  },
  {
    "job_id": 722135,
    "skill_id": 214,
    "job_title": "Business Intelligence Manager / Big data (F/H)",
    "skills": "docker",
    "salary_year_avg": "89100.0",
    "company_name": "ASI"
  },
  {
    "job_id": 722135,
    "skill_id": 216,
    "job_title": "Business Intelligence Manager / Big data (F/H)",
    "skills": "github",
    "salary_year_avg": "89100.0",
    "company_name": "ASI"
  },
  {
    "job_id": 723203,
    "skill_id": 189,
    "job_title": "Principal Data Analyst",
    "skills": "sap",
    "salary_year_avg": "105000.0",
    "company_name": "Exact Sciences"
  },
  {
    "job_id": 730085,
    "skill_id": 0,
    "job_title": "IT Data Analyst (Tampa Bay, FL)",
    "skills": "sql",
    "salary_year_avg": "60000.0",
    "company_name": "Chadwell Supply"
  },
  {
    "job_id": 730085,
    "skill_id": 16,
    "job_title": "IT Data Analyst (Tampa Bay, FL)",
    "skills": "t-sql",
    "salary_year_avg": "60000.0",
    "company_name": "Chadwell Supply"
  },
  {
    "job_id": 730085,
    "skill_id": 23,
    "job_title": "IT Data Analyst (Tampa Bay, FL)",
    "skills": "crystal",
    "salary_year_avg": "60000.0",
    "company_name": "Chadwell Supply"
  },
  {
    "job_id": 730085,
    "skill_id": 61,
    "job_title": "IT Data Analyst (Tampa Bay, FL)",
    "skills": "sql server",
    "salary_year_avg": "60000.0",
    "company_name": "Chadwell Supply"
  },
  {
    "job_id": 730085,
    "skill_id": 181,
    "job_title": "IT Data Analyst (Tampa Bay, FL)",
    "skills": "excel",
    "salary_year_avg": "60000.0",
    "company_name": "Chadwell Supply"
  },
  {
    "job_id": 730085,
    "skill_id": 183,
    "job_title": "IT Data Analyst (Tampa Bay, FL)",
    "skills": "power bi",
    "salary_year_avg": "60000.0",
    "company_name": "Chadwell Supply"
  },
  {
    "job_id": 730085,
    "skill_id": 197,
    "job_title": "IT Data Analyst (Tampa Bay, FL)",
    "skills": "ssrs",
    "salary_year_avg": "60000.0",
    "company_name": "Chadwell Supply"
  },
  {
    "job_id": 738823,
    "skill_id": 0,
    "job_title": "Data Insights Analyst (all genders) - Remote",
    "skills": "sql",
    "salary_year_avg": "92000.0",
    "company_name": "OUTFITTERY"
  },
  {
    "job_id": 738823,
    "skill_id": 1,
    "job_title": "Data Insights Analyst (all genders) - Remote",
    "skills": "python",
    "salary_year_avg": "92000.0",
    "company_name": "OUTFITTERY"
  },
  {
    "job_id": 738823,
    "skill_id": 45,
    "job_title": "Data Insights Analyst (all genders) - Remote",
    "skills": "pascal",
    "salary_year_avg": "92000.0",
    "company_name": "OUTFITTERY"
  },
  {
    "job_id": 738823,
    "skill_id": 182,
    "job_title": "Data Insights Analyst (all genders) - Remote",
    "skills": "tableau",
    "salary_year_avg": "92000.0",
    "company_name": "OUTFITTERY"
  },
  {
    "job_id": 740073,
    "skill_id": 181,
    "job_title": "Data Analytics Manager",
    "skills": "excel",
    "salary_year_avg": "137000.0",
    "company_name": "WhiteCrow"
  },
  {
    "job_id": 740073,
    "skill_id": 196,
    "job_title": "Data Analytics Manager",
    "skills": "powerpoint",
    "salary_year_avg": "137000.0",
    "company_name": "WhiteCrow"
  },
  {
    "job_id": 758435,
    "skill_id": 21,
    "job_title": "HR Data Analyst",
    "skills": "visual basic",
    "salary_year_avg": "60000.0",
    "company_name": "SHI International Corp."
  },
  {
    "job_id": 758435,
    "skill_id": 22,
    "job_title": "HR Data Analyst",
    "skills": "vba",
    "salary_year_avg": "60000.0",
    "company_name": "SHI International Corp."
  },
  {
    "job_id": 758435,
    "skill_id": 181,
    "job_title": "HR Data Analyst",
    "skills": "excel",
    "salary_year_avg": "60000.0",
    "company_name": "SHI International Corp."
  },
  {
    "job_id": 758435,
    "skill_id": 183,
    "job_title": "HR Data Analyst",
    "skills": "power bi",
    "salary_year_avg": "60000.0",
    "company_name": "SHI International Corp."
  },
  {
    "job_id": 758435,
    "skill_id": 195,
    "job_title": "HR Data Analyst",
    "skills": "sharepoint",
    "salary_year_avg": "60000.0",
    "company_name": "SHI International Corp."
  },
  {
    "job_id": 759540,
    "skill_id": 0,
    "job_title": "Data Analyst",
    "skills": "sql",
    "salary_year_avg": "100000.0",
    "company_name": "Lendistry"
  },
  {
    "job_id": 759540,
    "skill_id": 1,
    "job_title": "Data Analyst",
    "skills": "python",
    "salary_year_avg": "100000.0",
    "company_name": "Lendistry"
  },
  {
    "job_id": 759540,
    "skill_id": 3,
    "job_title": "Data Analyst",
    "skills": "scala",
    "salary_year_avg": "100000.0",
    "company_name": "Lendistry"
  },
  {
    "job_id": 759540,
    "skill_id": 4,
    "job_title": "Data Analyst",
    "skills": "java",
    "salary_year_avg": "100000.0",
    "company_name": "Lendistry"
  },
  {
    "job_id": 759540,
    "skill_id": 5,
    "job_title": "Data Analyst",
    "skills": "r",
    "salary_year_avg": "100000.0",
    "company_name": "Lendistry"
  },
  {
    "job_id": 759540,
    "skill_id": 7,
    "job_title": "Data Analyst",
    "skills": "sas",
    "salary_year_avg": "100000.0",
    "company_name": "Lendistry"
  },
  {
    "job_id": 759540,
    "skill_id": 181,
    "job_title": "Data Analyst",
    "skills": "excel",
    "salary_year_avg": "100000.0",
    "company_name": "Lendistry"
  },
  {
    "job_id": 759540,
    "skill_id": 186,
    "job_title": "Data Analyst",
    "skills": "sas",
    "salary_year_avg": "100000.0",
    "company_name": "Lendistry"
  },
  {
    "job_id": 759540,
    "skill_id": 188,
    "job_title": "Data Analyst",
    "skills": "word",
    "salary_year_avg": "100000.0",
    "company_name": "Lendistry"
  },
  {
    "job_id": 759540,
    "skill_id": 196,
    "job_title": "Data Analyst",
    "skills": "powerpoint",
    "salary_year_avg": "100000.0",
    "company_name": "Lendistry"
  },
  {
    "job_id": 760703,
    "skill_id": 0,
    "job_title": "Data Analyst",
    "skills": "sql",
    "salary_year_avg": "63000.0",
    "company_name": "MYR Group"
  },
  {
    "job_id": 760703,
    "skill_id": 181,
    "job_title": "Data Analyst",
    "skills": "excel",
    "salary_year_avg": "63000.0",
    "company_name": "MYR Group"
  },
  {
    "job_id": 780674,
    "skill_id": 0,
    "job_title": "Data Scientist Analyst",
    "skills": "sql",
    "salary_year_avg": "111800.0",
    "company_name": "Sikorsky Aircraft Corporation"
  },
  {
    "job_id": 780674,
    "skill_id": 1,
    "job_title": "Data Scientist Analyst",
    "skills": "python",
    "salary_year_avg": "111800.0",
    "company_name": "Sikorsky Aircraft Corporation"
  },
  {
    "job_id": 780674,
    "skill_id": 4,
    "job_title": "Data Scientist Analyst",
    "skills": "java",
    "salary_year_avg": "111800.0",
    "company_name": "Sikorsky Aircraft Corporation"
  },
  {
    "job_id": 780674,
    "skill_id": 9,
    "job_title": "Data Scientist Analyst",
    "skills": "javascript",
    "salary_year_avg": "111800.0",
    "company_name": "Sikorsky Aircraft Corporation"
  },
  {
    "job_id": 780674,
    "skill_id": 13,
    "job_title": "Data Scientist Analyst",
    "skills": "c++",
    "salary_year_avg": "111800.0",
    "company_name": "Sikorsky Aircraft Corporation"
  },
  {
    "job_id": 780674,
    "skill_id": 15,
    "job_title": "Data Scientist Analyst",
    "skills": "matlab",
    "salary_year_avg": "111800.0",
    "company_name": "Sikorsky Aircraft Corporation"
  },
  {
    "job_id": 780674,
    "skill_id": 31,
    "job_title": "Data Scientist Analyst",
    "skills": "perl",
    "salary_year_avg": "111800.0",
    "company_name": "Sikorsky Aircraft Corporation"
  },
  {
    "job_id": 780674,
    "skill_id": 56,
    "job_title": "Data Scientist Analyst",
    "skills": "mysql",
    "salary_year_avg": "111800.0",
    "company_name": "Sikorsky Aircraft Corporation"
  },
  {
    "job_id": 780674,
    "skill_id": 83,
    "job_title": "Data Scientist Analyst",
    "skills": "aurora",
    "salary_year_avg": "111800.0",
    "company_name": "Sikorsky Aircraft Corporation"
  },
  {
    "job_id": 780674,
    "skill_id": 169,
    "job_title": "Data Scientist Analyst",
    "skills": "linux",
    "salary_year_avg": "111800.0",
    "company_name": "Sikorsky Aircraft Corporation"
  },
  {
    "job_id": 793725,
    "skill_id": 0,
    "job_title": "Data Analyst",
    "skills": "sql",
    "salary_year_avg": "83679.0",
    "company_name": "Prince George's County"
  },
  {
    "job_id": 793725,
    "skill_id": 1,
    "job_title": "Data Analyst",
    "skills": "python",
    "salary_year_avg": "83679.0",
    "company_name": "Prince George's County"
  },
  {
    "job_id": 793725,
    "skill_id": 5,
    "job_title": "Data Analyst",
    "skills": "r",
    "salary_year_avg": "83679.0",
    "company_name": "Prince George's County"
  },
  {
    "job_id": 793725,
    "skill_id": 23,
    "job_title": "Data Analyst",
    "skills": "crystal",
    "salary_year_avg": "83679.0",
    "company_name": "Prince George's County"
  },
  {
    "job_id": 793725,
    "skill_id": 61,
    "job_title": "Data Analyst",
    "skills": "sql server",
    "salary_year_avg": "83679.0",
    "company_name": "Prince George's County"
  },
  {
    "job_id": 793725,
    "skill_id": 181,
    "job_title": "Data Analyst",
    "skills": "excel",
    "salary_year_avg": "83679.0",
    "company_name": "Prince George's County"
  },
  {
    "job_id": 793725,
    "skill_id": 182,
    "job_title": "Data Analyst",
    "skills": "tableau",
    "salary_year_avg": "83679.0",
    "company_name": "Prince George's County"
  },
  {
    "job_id": 793725,
    "skill_id": 183,
    "job_title": "Data Analyst",
    "skills": "power bi",
    "salary_year_avg": "83679.0",
    "company_name": "Prince George's County"
  },
  {
    "job_id": 793725,
    "skill_id": 188,
    "job_title": "Data Analyst",
    "skills": "word",
    "salary_year_avg": "83679.0",
    "company_name": "Prince George's County"
  },
  {
    "job_id": 793725,
    "skill_id": 196,
    "job_title": "Data Analyst",
    "skills": "powerpoint",
    "salary_year_avg": "83679.0",
    "company_name": "Prince George's County"
  },
  {
    "job_id": 793725,
    "skill_id": 199,
    "job_title": "Data Analyst",
    "skills": "spss",
    "salary_year_avg": "83679.0",
    "company_name": "Prince George's County"
  },
  {
    "job_id": 800017,
    "skill_id": 0,
    "job_title": "Data Analyst",
    "skills": "sql",
    "salary_year_avg": "106000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 800017,
    "skill_id": 1,
    "job_title": "Data Analyst",
    "skills": "python",
    "salary_year_avg": "106000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 800017,
    "skill_id": 80,
    "job_title": "Data Analyst",
    "skills": "snowflake",
    "salary_year_avg": "106000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 800017,
    "skill_id": 181,
    "job_title": "Data Analyst",
    "skills": "excel",
    "salary_year_avg": "106000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 800017,
    "skill_id": 182,
    "job_title": "Data Analyst",
    "skills": "tableau",
    "salary_year_avg": "106000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 800017,
    "skill_id": 210,
    "job_title": "Data Analyst",
    "skills": "git",
    "salary_year_avg": "106000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 805174,
    "skill_id": 0,
    "job_title": "Data Analyst",
    "skills": "sql",
    "salary_year_avg": "100500.0",
    "company_name": "iGenius"
  },
  {
    "job_id": 805174,
    "skill_id": 1,
    "job_title": "Data Analyst",
    "skills": "python",
    "salary_year_avg": "100500.0",
    "company_name": "iGenius"
  },
  {
    "job_id": 805174,
    "skill_id": 5,
    "job_title": "Data Analyst",
    "skills": "r",
    "salary_year_avg": "100500.0",
    "company_name": "iGenius"
  },
  {
    "job_id": 805174,
    "skill_id": 23,
    "job_title": "Data Analyst",
    "skills": "crystal",
    "salary_year_avg": "100500.0",
    "company_name": "iGenius"
  },
  {
    "job_id": 805174,
    "skill_id": 77,
    "job_title": "Data Analyst",
    "skills": "bigquery",
    "salary_year_avg": "100500.0",
    "company_name": "iGenius"
  },
  {
    "job_id": 805174,
    "skill_id": 182,
    "job_title": "Data Analyst",
    "skills": "tableau",
    "salary_year_avg": "100500.0",
    "company_name": "iGenius"
  },
  {
    "job_id": 805174,
    "skill_id": 187,
    "job_title": "Data Analyst",
    "skills": "qlik",
    "salary_year_avg": "100500.0",
    "company_name": "iGenius"
  },
  {
    "job_id": 809132,
    "skill_id": 170,
    "job_title": "Safe School Data Analyst",
    "skills": "windows",
    "salary_year_avg": "39551.19921875",
    "company_name": "Polk County Sheriff's Office"
  },
  {
    "job_id": 809132,
    "skill_id": 181,
    "job_title": "Safe School Data Analyst",
    "skills": "excel",
    "salary_year_avg": "39551.19921875",
    "company_name": "Polk County Sheriff's Office"
  },
  {
    "job_id": 809132,
    "skill_id": 188,
    "job_title": "Safe School Data Analyst",
    "skills": "word",
    "salary_year_avg": "39551.19921875",
    "company_name": "Polk County Sheriff's Office"
  },
  {
    "job_id": 816763,
    "skill_id": 0,
    "job_title": "Data Analyst - Business Intelligence",
    "skills": "sql",
    "salary_year_avg": "129050.0",
    "company_name": "Guidehouse"
  },
  {
    "job_id": 816763,
    "skill_id": 182,
    "job_title": "Data Analyst - Business Intelligence",
    "skills": "tableau",
    "salary_year_avg": "129050.0",
    "company_name": "Guidehouse"
  },
  {
    "job_id": 821715,
    "skill_id": 0,
    "job_title": "Data Analyst, Central Activation",
    "skills": "sql",
    "salary_year_avg": "57000.0",
    "company_name": "Publicis Groupe"
  },
  {
    "job_id": 821715,
    "skill_id": 1,
    "job_title": "Data Analyst, Central Activation",
    "skills": "python",
    "salary_year_avg": "57000.0",
    "company_name": "Publicis Groupe"
  },
  {
    "job_id": 821715,
    "skill_id": 5,
    "job_title": "Data Analyst, Central Activation",
    "skills": "r",
    "salary_year_avg": "57000.0",
    "company_name": "Publicis Groupe"
  },
  {
    "job_id": 821715,
    "skill_id": 76,
    "job_title": "Data Analyst, Central Activation",
    "skills": "aws",
    "salary_year_avg": "57000.0",
    "company_name": "Publicis Groupe"
  },
  {
    "job_id": 821715,
    "skill_id": 92,
    "job_title": "Data Analyst, Central Activation",
    "skills": "spark",
    "salary_year_avg": "57000.0",
    "company_name": "Publicis Groupe"
  },
  {
    "job_id": 821715,
    "skill_id": 181,
    "job_title": "Data Analyst, Central Activation",
    "skills": "excel",
    "salary_year_avg": "57000.0",
    "company_name": "Publicis Groupe"
  },
  {
    "job_id": 821715,
    "skill_id": 182,
    "job_title": "Data Analyst, Central Activation",
    "skills": "tableau",
    "salary_year_avg": "57000.0",
    "company_name": "Publicis Groupe"
  },
  {
    "job_id": 821715,
    "skill_id": 201,
    "job_title": "Data Analyst, Central Activation",
    "skills": "alteryx",
    "salary_year_avg": "57000.0",
    "company_name": "Publicis Groupe"
  },
  {
    "job_id": 838141,
    "skill_id": 0,
    "job_title": "Data Analyst II",
    "skills": "sql",
    "salary_year_avg": "67500.0",
    "company_name": "CoventBridge Group"
  },
  {
    "job_id": 838141,
    "skill_id": 7,
    "job_title": "Data Analyst II",
    "skills": "sas",
    "salary_year_avg": "67500.0",
    "company_name": "CoventBridge Group"
  },
  {
    "job_id": 838141,
    "skill_id": 181,
    "job_title": "Data Analyst II",
    "skills": "excel",
    "salary_year_avg": "67500.0",
    "company_name": "CoventBridge Group"
  },
  {
    "job_id": 838141,
    "skill_id": 186,
    "job_title": "Data Analyst II",
    "skills": "sas",
    "salary_year_avg": "67500.0",
    "company_name": "CoventBridge Group"
  },
  {
    "job_id": 838141,
    "skill_id": 188,
    "job_title": "Data Analyst II",
    "skills": "word",
    "salary_year_avg": "67500.0",
    "company_name": "CoventBridge Group"
  },
  {
    "job_id": 838391,
    "skill_id": 0,
    "job_title": "Data Insight Analyst",
    "skills": "sql",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 838391,
    "skill_id": 181,
    "job_title": "Data Insight Analyst",
    "skills": "excel",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 838391,
    "skill_id": 182,
    "job_title": "Data Insight Analyst",
    "skills": "tableau",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 840183,
    "skill_id": 181,
    "job_title": "Data Analyst",
    "skills": "excel",
    "salary_year_avg": "105000.0",
    "company_name": "IFS"
  },
  {
    "job_id": 842152,
    "skill_id": 0,
    "job_title": "Data Analyst",
    "skills": "sql",
    "salary_year_avg": "98500.0",
    "company_name": "DSI Systems"
  },
  {
    "job_id": 842152,
    "skill_id": 181,
    "job_title": "Data Analyst",
    "skills": "excel",
    "salary_year_avg": "98500.0",
    "company_name": "DSI Systems"
  },
  {
    "job_id": 842152,
    "skill_id": 182,
    "job_title": "Data Analyst",
    "skills": "tableau",
    "salary_year_avg": "98500.0",
    "company_name": "DSI Systems"
  },
  {
    "job_id": 842394,
    "skill_id": 0,
    "job_title": "eCommerce Data Analyst",
    "skills": "sql",
    "salary_year_avg": "80000.0",
    "company_name": "Hornblower Inc"
  },
  {
    "job_id": 842394,
    "skill_id": 9,
    "job_title": "eCommerce Data Analyst",
    "skills": "javascript",
    "salary_year_avg": "80000.0",
    "company_name": "Hornblower Inc"
  },
  {
    "job_id": 842394,
    "skill_id": 182,
    "job_title": "eCommerce Data Analyst",
    "skills": "tableau",
    "salary_year_avg": "80000.0",
    "company_name": "Hornblower Inc"
  },
  {
    "job_id": 858421,
    "skill_id": 0,
    "job_title": "Data Analyst Intern",
    "skills": "sql",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 858421,
    "skill_id": 1,
    "job_title": "Data Analyst Intern",
    "skills": "python",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 858421,
    "skill_id": 5,
    "job_title": "Data Analyst Intern",
    "skills": "r",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 858421,
    "skill_id": 7,
    "job_title": "Data Analyst Intern",
    "skills": "sas",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 858421,
    "skill_id": 182,
    "job_title": "Data Analyst Intern",
    "skills": "tableau",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 858421,
    "skill_id": 186,
    "job_title": "Data Analyst Intern",
    "skills": "sas",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 872671,
    "skill_id": 0,
    "job_title": "Data Analyst",
    "skills": "sql",
    "salary_year_avg": "85000.0",
    "company_name": "NLB Services"
  },
  {
    "job_id": 872671,
    "skill_id": 1,
    "job_title": "Data Analyst",
    "skills": "python",
    "salary_year_avg": "85000.0",
    "company_name": "NLB Services"
  },
  {
    "job_id": 872671,
    "skill_id": 78,
    "job_title": "Data Analyst",
    "skills": "redshift",
    "salary_year_avg": "85000.0",
    "company_name": "NLB Services"
  },
  {
    "job_id": 872671,
    "skill_id": 80,
    "job_title": "Data Analyst",
    "skills": "snowflake",
    "salary_year_avg": "85000.0",
    "company_name": "NLB Services"
  },
  {
    "job_id": 872671,
    "skill_id": 182,
    "job_title": "Data Analyst",
    "skills": "tableau",
    "salary_year_avg": "85000.0",
    "company_name": "NLB Services"
  },
  {
    "job_id": 879733,
    "skill_id": 181,
    "job_title": "Trade Compliance Data Analyst",
    "skills": "excel",
    "salary_year_avg": "90000.0",
    "company_name": "Corning Incorporated"
  },
  {
    "job_id": 882398,
    "skill_id": 0,
    "job_title": "Data Analyst III",
    "skills": "sql",
    "salary_year_avg": "92550.0",
    "company_name": "Health Net"
  },
  {
    "job_id": 882398,
    "skill_id": 181,
    "job_title": "Data Analyst III",
    "skills": "excel",
    "salary_year_avg": "92550.0",
    "company_name": "Health Net"
  },
  {
    "job_id": 888697,
    "skill_id": 0,
    "job_title": "Strategic Sourcing Data Analyst",
    "skills": "sql",
    "salary_year_avg": "86732.5",
    "company_name": "Apple"
  },
  {
    "job_id": 888697,
    "skill_id": 5,
    "job_title": "Strategic Sourcing Data Analyst",
    "skills": "r",
    "salary_year_avg": "86732.5",
    "company_name": "Apple"
  },
  {
    "job_id": 888697,
    "skill_id": 182,
    "job_title": "Strategic Sourcing Data Analyst",
    "skills": "tableau",
    "salary_year_avg": "86732.5",
    "company_name": "Apple"
  },
  {
    "job_id": 888697,
    "skill_id": 201,
    "job_title": "Strategic Sourcing Data Analyst",
    "skills": "alteryx",
    "salary_year_avg": "86732.5",
    "company_name": "Apple"
  },
  {
    "job_id": 893242,
    "skill_id": 1,
    "job_title": "Sr. Data Analyst",
    "skills": "python",
    "salary_year_avg": "150000.0",
    "company_name": "Alkami Technology"
  },
  {
    "job_id": 893242,
    "skill_id": 5,
    "job_title": "Sr. Data Analyst",
    "skills": "r",
    "salary_year_avg": "150000.0",
    "company_name": "Alkami Technology"
  },
  {
    "job_id": 893242,
    "skill_id": 182,
    "job_title": "Sr. Data Analyst",
    "skills": "tableau",
    "salary_year_avg": "150000.0",
    "company_name": "Alkami Technology"
  },
  {
    "job_id": 893242,
    "skill_id": 183,
    "job_title": "Sr. Data Analyst",
    "skills": "power bi",
    "salary_year_avg": "150000.0",
    "company_name": "Alkami Technology"
  },
  {
    "job_id": 893242,
    "skill_id": 185,
    "job_title": "Sr. Data Analyst",
    "skills": "looker",
    "salary_year_avg": "150000.0",
    "company_name": "Alkami Technology"
  },
  {
    "job_id": 909351,
    "skill_id": 0,
    "job_title": "Data Analyst",
    "skills": "sql",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 909351,
    "skill_id": 1,
    "job_title": "Data Analyst",
    "skills": "python",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 909351,
    "skill_id": 5,
    "job_title": "Data Analyst",
    "skills": "r",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 909351,
    "skill_id": 9,
    "job_title": "Data Analyst",
    "skills": "javascript",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 909351,
    "skill_id": 13,
    "job_title": "Data Analyst",
    "skills": "c++",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 909351,
    "skill_id": 80,
    "job_title": "Data Analyst",
    "skills": "snowflake",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 909351,
    "skill_id": 181,
    "job_title": "Data Analyst",
    "skills": "excel",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 909351,
    "skill_id": 182,
    "job_title": "Data Analyst",
    "skills": "tableau",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 909351,
    "skill_id": 185,
    "job_title": "Data Analyst",
    "skills": "looker",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 909351,
    "skill_id": 187,
    "job_title": "Data Analyst",
    "skills": "qlik",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 909351,
    "skill_id": 196,
    "job_title": "Data Analyst",
    "skills": "powerpoint",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 915649,
    "skill_id": 0,
    "job_title": "Data Analyst",
    "skills": "sql",
    "salary_year_avg": "87500.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 915649,
    "skill_id": 181,
    "job_title": "Data Analyst",
    "skills": "excel",
    "salary_year_avg": "87500.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 915649,
    "skill_id": 183,
    "job_title": "Data Analyst",
    "skills": "power bi",
    "salary_year_avg": "87500.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 916210,
    "skill_id": 0,
    "job_title": "Treasury Data Analyst II",
    "skills": "sql",
    "salary_year_avg": "87000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 916210,
    "skill_id": 1,
    "job_title": "Treasury Data Analyst II",
    "skills": "python",
    "salary_year_avg": "87000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 916210,
    "skill_id": 5,
    "job_title": "Treasury Data Analyst II",
    "skills": "r",
    "salary_year_avg": "87000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 916210,
    "skill_id": 182,
    "job_title": "Treasury Data Analyst II",
    "skills": "tableau",
    "salary_year_avg": "87000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 916210,
    "skill_id": 183,
    "job_title": "Treasury Data Analyst II",
    "skills": "power bi",
    "salary_year_avg": "87000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 916210,
    "skill_id": 215,
    "job_title": "Treasury Data Analyst II",
    "skills": "flow",
    "salary_year_avg": "87000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 921245,
    "skill_id": 0,
    "job_title": "Data Analyst (Taiwanese)",
    "skills": "sql",
    "salary_year_avg": "111175.0",
    "company_name": "iOPEX"
  },
  {
    "job_id": 921245,
    "skill_id": 80,
    "job_title": "Data Analyst (Taiwanese)",
    "skills": "snowflake",
    "salary_year_avg": "111175.0",
    "company_name": "iOPEX"
  },
  {
    "job_id": 921245,
    "skill_id": 182,
    "job_title": "Data Analyst (Taiwanese)",
    "skills": "tableau",
    "salary_year_avg": "111175.0",
    "company_name": "iOPEX"
  },
  {
    "job_id": 921245,
    "skill_id": 233,
    "job_title": "Data Analyst (Taiwanese)",
    "skills": "jira",
    "salary_year_avg": "111175.0",
    "company_name": "iOPEX"
  },
  {
    "job_id": 929492,
    "skill_id": 0,
    "job_title": "Staff Data Analyst",
    "skills": "sql",
    "salary_year_avg": "159331.0",
    "company_name": "Activision"
  },
  {
    "job_id": 929492,
    "skill_id": 1,
    "job_title": "Staff Data Analyst",
    "skills": "python",
    "salary_year_avg": "159331.0",
    "company_name": "Activision"
  },
  {
    "job_id": 929492,
    "skill_id": 5,
    "job_title": "Staff Data Analyst",
    "skills": "r",
    "salary_year_avg": "159331.0",
    "company_name": "Activision"
  },
  {
    "job_id": 929492,
    "skill_id": 182,
    "job_title": "Staff Data Analyst",
    "skills": "tableau",
    "salary_year_avg": "159331.0",
    "company_name": "Activision"
  },
  {
    "job_id": 940260,
    "skill_id": 181,
    "job_title": "Data Analyst - Procurement",
    "skills": "excel",
    "salary_year_avg": "65000.0",
    "company_name": "Mane USA"
  },
  {
    "job_id": 940260,
    "skill_id": 189,
    "job_title": "Data Analyst - Procurement",
    "skills": "sap",
    "salary_year_avg": "65000.0",
    "company_name": "Mane USA"
  },
  {
    "job_id": 940260,
    "skill_id": 196,
    "job_title": "Data Analyst - Procurement",
    "skills": "powerpoint",
    "salary_year_avg": "65000.0",
    "company_name": "Mane USA"
  },
  {
    "job_id": 949419,
    "skill_id": 188,
    "job_title": "Research Administration Data Analyst (6206U), Research Admin ...",
    "skills": "word",
    "salary_year_avg": "91700.0",
    "company_name": "University of California Berkeley"
  },
  {
    "job_id": 949419,
    "skill_id": 190,
    "job_title": "Research Administration Data Analyst (6206U), Research Admin ...",
    "skills": "spreadsheet",
    "salary_year_avg": "91700.0",
    "company_name": "University of California Berkeley"
  },
  {
    "job_id": 951762,
    "skill_id": 8,
    "job_title": "Online Data Analyst",
    "skills": "go",
    "salary_year_avg": "60734.0",
    "company_name": "TELUS International AI Inc"
  },
  {
    "job_id": 956581,
    "skill_id": 0,
    "job_title": "Data Analyst (f/m/d) Berlin",
    "skills": "sql",
    "salary_year_avg": "100500.0",
    "company_name": "SIGNA Sports United"
  },
  {
    "job_id": 956581,
    "skill_id": 76,
    "job_title": "Data Analyst (f/m/d) Berlin",
    "skills": "aws",
    "salary_year_avg": "100500.0",
    "company_name": "SIGNA Sports United"
  },
  {
    "job_id": 956581,
    "skill_id": 182,
    "job_title": "Data Analyst (f/m/d) Berlin",
    "skills": "tableau",
    "salary_year_avg": "100500.0",
    "company_name": "SIGNA Sports United"
  },
  {
    "job_id": 960064,
    "skill_id": 8,
    "job_title": "Data Analyst - Financing BI CIB",
    "skills": "go",
    "salary_year_avg": "51014.0",
    "company_name": "Natixis in Portugal"
  },
  {
    "job_id": 960064,
    "skill_id": 181,
    "job_title": "Data Analyst - Financing BI CIB",
    "skills": "excel",
    "salary_year_avg": "51014.0",
    "company_name": "Natixis in Portugal"
  },
  {
    "job_id": 960064,
    "skill_id": 183,
    "job_title": "Data Analyst - Financing BI CIB",
    "skills": "power bi",
    "salary_year_avg": "51014.0",
    "company_name": "Natixis in Portugal"
  },
  {
    "job_id": 960064,
    "skill_id": 200,
    "job_title": "Data Analyst - Financing BI CIB",
    "skills": "cognos",
    "salary_year_avg": "51014.0",
    "company_name": "Natixis in Portugal"
  },
  {
    "job_id": 961041,
    "skill_id": 0,
    "job_title": "Treasury Data Analyst II",
    "skills": "sql",
    "salary_year_avg": "87000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 961041,
    "skill_id": 1,
    "job_title": "Treasury Data Analyst II",
    "skills": "python",
    "salary_year_avg": "87000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 961041,
    "skill_id": 5,
    "job_title": "Treasury Data Analyst II",
    "skills": "r",
    "salary_year_avg": "87000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 961041,
    "skill_id": 182,
    "job_title": "Treasury Data Analyst II",
    "skills": "tableau",
    "salary_year_avg": "87000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 961041,
    "skill_id": 183,
    "job_title": "Treasury Data Analyst II",
    "skills": "power bi",
    "salary_year_avg": "87000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 962735,
    "skill_id": 0,
    "job_title": "Data Assistant (Big Data)",
    "skills": "sql",
    "salary_year_avg": "56700.0",
    "company_name": "Gameloft"
  },
  {
    "job_id": 962735,
    "skill_id": 1,
    "job_title": "Data Assistant (Big Data)",
    "skills": "python",
    "salary_year_avg": "56700.0",
    "company_name": "Gameloft"
  },
  {
    "job_id": 962735,
    "skill_id": 182,
    "job_title": "Data Assistant (Big Data)",
    "skills": "tableau",
    "salary_year_avg": "56700.0",
    "company_name": "Gameloft"
  },
  {
    "job_id": 962735,
    "skill_id": 185,
    "job_title": "Data Assistant (Big Data)",
    "skills": "looker",
    "salary_year_avg": "56700.0",
    "company_name": "Gameloft"
  },
  {
    "job_id": 973945,
    "skill_id": 0,
    "job_title": "Claims Data Analytics Manager",
    "skills": "sql",
    "salary_year_avg": "125000.0",
    "company_name": "Automobile Club of Southern California"
  },
  {
    "job_id": 973945,
    "skill_id": 1,
    "job_title": "Claims Data Analytics Manager",
    "skills": "python",
    "salary_year_avg": "125000.0",
    "company_name": "Automobile Club of Southern California"
  },
  {
    "job_id": 973945,
    "skill_id": 5,
    "job_title": "Claims Data Analytics Manager",
    "skills": "r",
    "salary_year_avg": "125000.0",
    "company_name": "Automobile Club of Southern California"
  },
  {
    "job_id": 973945,
    "skill_id": 181,
    "job_title": "Claims Data Analytics Manager",
    "skills": "excel",
    "salary_year_avg": "125000.0",
    "company_name": "Automobile Club of Southern California"
  },
  {
    "job_id": 973945,
    "skill_id": 182,
    "job_title": "Claims Data Analytics Manager",
    "skills": "tableau",
    "salary_year_avg": "125000.0",
    "company_name": "Automobile Club of Southern California"
  },
  {
    "job_id": 973945,
    "skill_id": 188,
    "job_title": "Claims Data Analytics Manager",
    "skills": "word",
    "salary_year_avg": "125000.0",
    "company_name": "Automobile Club of Southern California"
  },
  {
    "job_id": 973945,
    "skill_id": 196,
    "job_title": "Claims Data Analytics Manager",
    "skills": "powerpoint",
    "salary_year_avg": "125000.0",
    "company_name": "Automobile Club of Southern California"
  },
  {
    "job_id": 973945,
    "skill_id": 198,
    "job_title": "Claims Data Analytics Manager",
    "skills": "outlook",
    "salary_year_avg": "125000.0",
    "company_name": "Automobile Club of Southern California"
  },
  {
    "job_id": 974504,
    "skill_id": 0,
    "job_title": "Information Protection Data Analyst - Remote | WFH",
    "skills": "sql",
    "salary_year_avg": "77000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 974504,
    "skill_id": 1,
    "job_title": "Information Protection Data Analyst - Remote | WFH",
    "skills": "python",
    "salary_year_avg": "77000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 974504,
    "skill_id": 20,
    "job_title": "Information Protection Data Analyst - Remote | WFH",
    "skills": "powershell",
    "salary_year_avg": "77000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 974504,
    "skill_id": 61,
    "job_title": "Information Protection Data Analyst - Remote | WFH",
    "skills": "sql server",
    "salary_year_avg": "77000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 974504,
    "skill_id": 74,
    "job_title": "Information Protection Data Analyst - Remote | WFH",
    "skills": "azure",
    "salary_year_avg": "77000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 974504,
    "skill_id": 181,
    "job_title": "Information Protection Data Analyst - Remote | WFH",
    "skills": "excel",
    "salary_year_avg": "77000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 974504,
    "skill_id": 196,
    "job_title": "Information Protection Data Analyst - Remote | WFH",
    "skills": "powerpoint",
    "salary_year_avg": "77000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 974504,
    "skill_id": 198,
    "job_title": "Information Protection Data Analyst - Remote | WFH",
    "skills": "outlook",
    "salary_year_avg": "77000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 977302,
    "skill_id": 0,
    "job_title": "Lead Database administrator and Business Data analyst",
    "skills": "sql",
    "salary_year_avg": "54988.0",
    "company_name": "HP"
  },
  {
    "job_id": 977302,
    "skill_id": 2,
    "job_title": "Lead Database administrator and Business Data analyst",
    "skills": "nosql",
    "salary_year_avg": "54988.0",
    "company_name": "HP"
  },
  {
    "job_id": 977302,
    "skill_id": 4,
    "job_title": "Lead Database administrator and Business Data analyst",
    "skills": "java",
    "salary_year_avg": "54988.0",
    "company_name": "HP"
  },
  {
    "job_id": 977302,
    "skill_id": 13,
    "job_title": "Lead Database administrator and Business Data analyst",
    "skills": "c++",
    "salary_year_avg": "54988.0",
    "company_name": "HP"
  },
  {
    "job_id": 977302,
    "skill_id": 76,
    "job_title": "Lead Database administrator and Business Data analyst",
    "skills": "aws",
    "salary_year_avg": "54988.0",
    "company_name": "HP"
  },
  {
    "job_id": 977302,
    "skill_id": 78,
    "job_title": "Lead Database administrator and Business Data analyst",
    "skills": "redshift",
    "salary_year_avg": "54988.0",
    "company_name": "HP"
  },
  {
    "job_id": 977302,
    "skill_id": 92,
    "job_title": "Lead Database administrator and Business Data analyst",
    "skills": "spark",
    "salary_year_avg": "54988.0",
    "company_name": "HP"
  },
  {
    "job_id": 977302,
    "skill_id": 169,
    "job_title": "Lead Database administrator and Business Data analyst",
    "skills": "linux",
    "salary_year_avg": "54988.0",
    "company_name": "HP"
  },
  {
    "job_id": 989948,
    "skill_id": 0,
    "job_title": "SQL Data Analyst - Healthcare",
    "skills": "sql",
    "salary_year_avg": "81311.5",
    "company_name": "Deloitte"
  },
  {
    "job_id": 989948,
    "skill_id": 97,
    "job_title": "SQL Data Analyst - Healthcare",
    "skills": "hadoop",
    "salary_year_avg": "81311.5",
    "company_name": "Deloitte"
  },
  {
    "job_id": 994065,
    "skill_id": 0,
    "job_title": "Data Analyst, Security",
    "skills": "sql",
    "salary_year_avg": "125000.0",
    "company_name": "Zoom"
  },
  {
    "job_id": 994065,
    "skill_id": 56,
    "job_title": "Data Analyst, Security",
    "skills": "mysql",
    "salary_year_avg": "125000.0",
    "company_name": "Zoom"
  },
  {
    "job_id": 994065,
    "skill_id": 182,
    "job_title": "Data Analyst, Security",
    "skills": "tableau",
    "salary_year_avg": "125000.0",
    "company_name": "Zoom"
  },
  {
    "job_id": 994065,
    "skill_id": 248,
    "job_title": "Data Analyst, Security",
    "skills": "zoom",
    "salary_year_avg": "125000.0",
    "company_name": "Zoom"
  },
  {
    "job_id": 1000781,
    "skill_id": 0,
    "job_title": "Sr. Data Analyst",
    "skills": "sql",
    "salary_year_avg": "90000.0",
    "company_name": "Total Wine and More"
  },
  {
    "job_id": 1000781,
    "skill_id": 1,
    "job_title": "Sr. Data Analyst",
    "skills": "python",
    "salary_year_avg": "90000.0",
    "company_name": "Total Wine and More"
  },
  {
    "job_id": 1005928,
    "skill_id": 0,
    "job_title": "Business Development Data Analyst",
    "skills": "sql",
    "salary_year_avg": "40000.0",
    "company_name": "BairesDev"
  },
  {
    "job_id": 1005928,
    "skill_id": 182,
    "job_title": "Business Development Data Analyst",
    "skills": "tableau",
    "salary_year_avg": "40000.0",
    "company_name": "BairesDev"
  },
  {
    "job_id": 1005928,
    "skill_id": 192,
    "job_title": "Business Development Data Analyst",
    "skills": "sheets",
    "salary_year_avg": "40000.0",
    "company_name": "BairesDev"
  },
  {
    "job_id": 1009522,
    "skill_id": 0,
    "job_title": "Data Analyst - Product Analytics",
    "skills": "sql",
    "salary_year_avg": "150000.0",
    "company_name": "Workday"
  },
  {
    "job_id": 1009522,
    "skill_id": 1,
    "job_title": "Data Analyst - Product Analytics",
    "skills": "python",
    "salary_year_avg": "150000.0",
    "company_name": "Workday"
  },
  {
    "job_id": 1009522,
    "skill_id": 182,
    "job_title": "Data Analyst - Product Analytics",
    "skills": "tableau",
    "salary_year_avg": "150000.0",
    "company_name": "Workday"
  },
  {
    "job_id": 1019193,
    "skill_id": 0,
    "job_title": "Data Analyst",
    "skills": "sql",
    "salary_year_avg": "111175.0",
    "company_name": "Publicis Groupe"
  },
  {
    "job_id": 1019193,
    "skill_id": 181,
    "job_title": "Data Analyst",
    "skills": "excel",
    "salary_year_avg": "111175.0",
    "company_name": "Publicis Groupe"
  },
  {
    "job_id": 1019193,
    "skill_id": 182,
    "job_title": "Data Analyst",
    "skills": "tableau",
    "salary_year_avg": "111175.0",
    "company_name": "Publicis Groupe"
  },
  {
    "job_id": 1024274,
    "skill_id": 1,
    "job_title": "Data Science Analyst",
    "skills": "python",
    "salary_year_avg": "90000.0",
    "company_name": "Bunge"
  },
  {
    "job_id": 1024274,
    "skill_id": 5,
    "job_title": "Data Science Analyst",
    "skills": "r",
    "salary_year_avg": "90000.0",
    "company_name": "Bunge"
  },
  {
    "job_id": 1024274,
    "skill_id": 93,
    "job_title": "Data Science Analyst",
    "skills": "pandas",
    "salary_year_avg": "90000.0",
    "company_name": "Bunge"
  },
  {
    "job_id": 1024274,
    "skill_id": 94,
    "job_title": "Data Science Analyst",
    "skills": "numpy",
    "salary_year_avg": "90000.0",
    "company_name": "Bunge"
  },
  {
    "job_id": 1024962,
    "skill_id": 0,
    "job_title": "Principal Business Data Analyst",
    "skills": "sql",
    "salary_year_avg": "150000.0",
    "company_name": "Intuit Inc"
  },
  {
    "job_id": 1024962,
    "skill_id": 1,
    "job_title": "Principal Business Data Analyst",
    "skills": "python",
    "salary_year_avg": "150000.0",
    "company_name": "Intuit Inc"
  },
  {
    "job_id": 1024962,
    "skill_id": 5,
    "job_title": "Principal Business Data Analyst",
    "skills": "r",
    "salary_year_avg": "150000.0",
    "company_name": "Intuit Inc"
  },
  {
    "job_id": 1031572,
    "skill_id": 0,
    "job_title": "Data Analyst / Senior Data Analyst",
    "skills": "sql",
    "salary_year_avg": "115000.0",
    "company_name": "Liberty Mutual"
  },
  {
    "job_id": 1031572,
    "skill_id": 181,
    "job_title": "Data Analyst / Senior Data Analyst",
    "skills": "excel",
    "salary_year_avg": "115000.0",
    "company_name": "Liberty Mutual"
  },
  {
    "job_id": 1031572,
    "skill_id": 215,
    "job_title": "Data Analyst / Senior Data Analyst",
    "skills": "flow",
    "salary_year_avg": "115000.0",
    "company_name": "Liberty Mutual"
  },
  {
    "job_id": 1068046,
    "skill_id": 181,
    "job_title": "Clinical Data Manager II",
    "skills": "excel",
    "salary_year_avg": "80850.0",
    "company_name": "Allucent"
  },
  {
    "job_id": 1068046,
    "skill_id": 188,
    "job_title": "Clinical Data Manager II",
    "skills": "word",
    "salary_year_avg": "80850.0",
    "company_name": "Allucent"
  },
  {
    "job_id": 1068046,
    "skill_id": 196,
    "job_title": "Clinical Data Manager II",
    "skills": "powerpoint",
    "salary_year_avg": "80850.0",
    "company_name": "Allucent"
  },
  {
    "job_id": 1075985,
    "skill_id": 4,
    "job_title": "AI-focused Data Analyst/Tableau Developer",
    "skills": "java",
    "salary_year_avg": "80000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 1075985,
    "skill_id": 181,
    "job_title": "AI-focused Data Analyst/Tableau Developer",
    "skills": "excel",
    "salary_year_avg": "80000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 1075985,
    "skill_id": 182,
    "job_title": "AI-focused Data Analyst/Tableau Developer",
    "skills": "tableau",
    "salary_year_avg": "80000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 1075985,
    "skill_id": 183,
    "job_title": "AI-focused Data Analyst/Tableau Developer",
    "skills": "power bi",
    "salary_year_avg": "80000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 1080430,
    "skill_id": 0,
    "job_title": "Lead Data Analyst",
    "skills": "sql",
    "salary_year_avg": "125000.0",
    "company_name": "Harnham"
  },
  {
    "job_id": 1080430,
    "skill_id": 1,
    "job_title": "Lead Data Analyst",
    "skills": "python",
    "salary_year_avg": "125000.0",
    "company_name": "Harnham"
  },
  {
    "job_id": 1088553,
    "skill_id": 1,
    "job_title": "Preclinical Neuroscience Data Analyst",
    "skills": "python",
    "salary_year_avg": "98500.0",
    "company_name": "Stanford University Lee Lab"
  },
  {
    "job_id": 1088553,
    "skill_id": 8,
    "job_title": "Preclinical Neuroscience Data Analyst",
    "skills": "go",
    "salary_year_avg": "98500.0",
    "company_name": "Stanford University Lee Lab"
  },
  {
    "job_id": 1088553,
    "skill_id": 15,
    "job_title": "Preclinical Neuroscience Data Analyst",
    "skills": "matlab",
    "salary_year_avg": "98500.0",
    "company_name": "Stanford University Lee Lab"
  },
  {
    "job_id": 1091932,
    "skill_id": 0,
    "job_title": "Healthcare Data Analyst",
    "skills": "sql",
    "salary_year_avg": "105000.0",
    "company_name": "Get It Recruit - Healthcare"
  },
  {
    "job_id": 1091932,
    "skill_id": 1,
    "job_title": "Healthcare Data Analyst",
    "skills": "python",
    "salary_year_avg": "105000.0",
    "company_name": "Get It Recruit - Healthcare"
  },
  {
    "job_id": 1091932,
    "skill_id": 182,
    "job_title": "Healthcare Data Analyst",
    "skills": "tableau",
    "salary_year_avg": "105000.0",
    "company_name": "Get It Recruit - Healthcare"
  },
  {
    "job_id": 1091932,
    "skill_id": 183,
    "job_title": "Healthcare Data Analyst",
    "skills": "power bi",
    "salary_year_avg": "105000.0",
    "company_name": "Get It Recruit - Healthcare"
  },
  {
    "job_id": 1100742,
    "skill_id": 181,
    "job_title": "FPA & Data Analyst (Blend)",
    "skills": "excel",
    "salary_year_avg": "77500.0",
    "company_name": "Jobot"
  },
  {
    "job_id": 1100742,
    "skill_id": 182,
    "job_title": "FPA & Data Analyst (Blend)",
    "skills": "tableau",
    "salary_year_avg": "77500.0",
    "company_name": "Jobot"
  },
  {
    "job_id": 1101388,
    "skill_id": 1,
    "job_title": "Data Analyst II (Healthcare Analytics). Job in Woodland Hills...",
    "skills": "python",
    "salary_year_avg": "74050.0",
    "company_name": "California Health & Wellness"
  },
  {
    "job_id": 1101388,
    "skill_id": 5,
    "job_title": "Data Analyst II (Healthcare Analytics). Job in Woodland Hills...",
    "skills": "r",
    "salary_year_avg": "74050.0",
    "company_name": "California Health & Wellness"
  },
  {
    "job_id": 1122921,
    "skill_id": 0,
    "job_title": "Data Analyst",
    "skills": "sql",
    "salary_year_avg": "120624.0",
    "company_name": "Elevance Health"
  },
  {
    "job_id": 1122921,
    "skill_id": 182,
    "job_title": "Data Analyst",
    "skills": "tableau",
    "salary_year_avg": "120624.0",
    "company_name": "Elevance Health"
  },
  {
    "job_id": 1122921,
    "skill_id": 183,
    "job_title": "Data Analyst",
    "skills": "power bi",
    "salary_year_avg": "120624.0",
    "company_name": "Elevance Health"
  },
  {
    "job_id": 1128758,
    "skill_id": 0,
    "job_title": "Data Analyst with PowerBI expertise",
    "skills": "sql",
    "salary_year_avg": "83500.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 1128758,
    "skill_id": 1,
    "job_title": "Data Analyst with PowerBI expertise",
    "skills": "python",
    "salary_year_avg": "83500.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 1128758,
    "skill_id": 181,
    "job_title": "Data Analyst with PowerBI expertise",
    "skills": "excel",
    "salary_year_avg": "83500.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 1130446,
    "skill_id": 0,
    "job_title": "Data Analyst",
    "skills": "sql",
    "salary_year_avg": "70500.0",
    "company_name": "AiFi"
  },
  {
    "job_id": 1130446,
    "skill_id": 1,
    "job_title": "Data Analyst",
    "skills": "python",
    "salary_year_avg": "70500.0",
    "company_name": "AiFi"
  },
  {
    "job_id": 1144814,
    "skill_id": 0,
    "job_title": "Data Analyst",
    "skills": "sql",
    "salary_year_avg": "65000.0",
    "company_name": "Jobot"
  },
  {
    "job_id": 1144814,
    "skill_id": 9,
    "job_title": "Data Analyst",
    "skills": "javascript",
    "salary_year_avg": "65000.0",
    "company_name": "Jobot"
  },
  {
    "job_id": 1144814,
    "skill_id": 181,
    "job_title": "Data Analyst",
    "skills": "excel",
    "salary_year_avg": "65000.0",
    "company_name": "Jobot"
  },
  {
    "job_id": 1144814,
    "skill_id": 182,
    "job_title": "Data Analyst",
    "skills": "tableau",
    "salary_year_avg": "65000.0",
    "company_name": "Jobot"
  },
  {
    "job_id": 1144814,
    "skill_id": 183,
    "job_title": "Data Analyst",
    "skills": "power bi",
    "salary_year_avg": "65000.0",
    "company_name": "Jobot"
  },
  {
    "job_id": 1156181,
    "skill_id": 0,
    "job_title": "Remote Data Analyst",
    "skills": "sql",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 1156181,
    "skill_id": 61,
    "job_title": "Remote Data Analyst",
    "skills": "sql server",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 1156181,
    "skill_id": 182,
    "job_title": "Remote Data Analyst",
    "skills": "tableau",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 1156181,
    "skill_id": 197,
    "job_title": "Remote Data Analyst",
    "skills": "ssrs",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology"
  },
  {
    "job_id": 1156183,
    "skill_id": 1,
    "job_title": "Staff Data Analyst",
    "skills": "python",
    "salary_year_avg": "170000.0",
    "company_name": "Cepheid"
  },
  {
    "job_id": 1156183,
    "skill_id": 15,
    "job_title": "Staff Data Analyst",
    "skills": "matlab",
    "salary_year_avg": "170000.0",
    "company_name": "Cepheid"
  },
  {
    "job_id": 1203514,
    "skill_id": 170,
    "job_title": "Data Analyst (Remote)",
    "skills": "windows",
    "salary_year_avg": "52500.0",
    "company_name": "Acosta, Inc."
  },
  {
    "job_id": 1203514,
    "skill_id": 181,
    "job_title": "Data Analyst (Remote)",
    "skills": "excel",
    "salary_year_avg": "52500.0",
    "company_name": "Acosta, Inc."
  },
  {
    "job_id": 1203514,
    "skill_id": 183,
    "job_title": "Data Analyst (Remote)",
    "skills": "power bi",
    "salary_year_avg": "52500.0",
    "company_name": "Acosta, Inc."
  },
  {
    "job_id": 1203514,
    "skill_id": 188,
    "job_title": "Data Analyst (Remote)",
    "skills": "word",
    "salary_year_avg": "52500.0",
    "company_name": "Acosta, Inc."
  },
  {
    "job_id": 1203514,
    "skill_id": 196,
    "job_title": "Data Analyst (Remote)",
    "skills": "powerpoint",
    "salary_year_avg": "52500.0",
    "company_name": "Acosta, Inc."
  },
  {
    "job_id": 1206705,
    "skill_id": 0,
    "job_title": "Data Analyst (English version)",
    "skills": "sql",
    "salary_year_avg": "111175.0",
    "company_name": "Averna"
  },
  {
    "job_id": 1206705,
    "skill_id": 1,
    "job_title": "Data Analyst (English version)",
    "skills": "python",
    "salary_year_avg": "111175.0",
    "company_name": "Averna"
  },
  {
    "job_id": 1206705,
    "skill_id": 5,
    "job_title": "Data Analyst (English version)",
    "skills": "r",
    "salary_year_avg": "111175.0",
    "company_name": "Averna"
  },
  {
    "job_id": 1206705,
    "skill_id": 77,
    "job_title": "Data Analyst (English version)",
    "skills": "bigquery",
    "salary_year_avg": "111175.0",
    "company_name": "Averna"
  },
  {
    "job_id": 1208499,
    "skill_id": 0,
    "job_title": "Investment Data Analyst",
    "skills": "sql",
    "salary_year_avg": "72500.0",
    "company_name": "Chamberlain Group"
  },
  {
    "job_id": 1208499,
    "skill_id": 1,
    "job_title": "Investment Data Analyst",
    "skills": "python",
    "salary_year_avg": "72500.0",
    "company_name": "Chamberlain Group"
  },
  {
    "job_id": 1208499,
    "skill_id": 13,
    "job_title": "Investment Data Analyst",
    "skills": "c++",
    "salary_year_avg": "72500.0",
    "company_name": "Chamberlain Group"
  },
  {
    "job_id": 1208499,
    "skill_id": 22,
    "job_title": "Investment Data Analyst",
    "skills": "vba",
    "salary_year_avg": "72500.0",
    "company_name": "Chamberlain Group"
  },
  {
    "job_id": 1208499,
    "skill_id": 181,
    "job_title": "Investment Data Analyst",
    "skills": "excel",
    "salary_year_avg": "72500.0",
    "company_name": "Chamberlain Group"
  },
  {
    "job_id": 1208499,
    "skill_id": 188,
    "job_title": "Investment Data Analyst",
    "skills": "word",
    "salary_year_avg": "72500.0",
    "company_name": "Chamberlain Group"
  },
  {
    "job_id": 1208499,
    "skill_id": 196,
    "job_title": "Investment Data Analyst",
    "skills": "powerpoint",
    "salary_year_avg": "72500.0",
    "company_name": "Chamberlain Group"
  },
  {
    "job_id": 1210765,
    "skill_id": 182,
    "job_title": "Director of Data and Crime Analysis (Management Analyst IV)",
    "skills": "tableau",
    "salary_year_avg": "118606.0",
    "company_name": "Fairfax County Government"
  },
  {
    "job_id": 1210765,
    "skill_id": 188,
    "job_title": "Director of Data and Crime Analysis (Management Analyst IV)",
    "skills": "word",
    "salary_year_avg": "118606.0",
    "company_name": "Fairfax County Government"
  },
  {
    "job_id": 1211253,
    "skill_id": 0,
    "job_title": "Data Analyst - Digital Marketing (all genders)",
    "skills": "sql",
    "salary_year_avg": "111175.0",
    "company_name": "iZotope"
  },
  {
    "job_id": 1211253,
    "skill_id": 1,
    "job_title": "Data Analyst - Digital Marketing (all genders)",
    "skills": "python",
    "salary_year_avg": "111175.0",
    "company_name": "iZotope"
  },
  {
    "job_id": 1211253,
    "skill_id": 5,
    "job_title": "Data Analyst - Digital Marketing (all genders)",
    "skills": "r",
    "salary_year_avg": "111175.0",
    "company_name": "iZotope"
  },
  {
    "job_id": 1211253,
    "skill_id": 77,
    "job_title": "Data Analyst - Digital Marketing (all genders)",
    "skills": "bigquery",
    "salary_year_avg": "111175.0",
    "company_name": "iZotope"
  },
  {
    "job_id": 1211253,
    "skill_id": 141,
    "job_title": "Data Analyst - Digital Marketing (all genders)",
    "skills": "express",
    "salary_year_avg": "111175.0",
    "company_name": "iZotope"
  },
  {
    "job_id": 1211253,
    "skill_id": 215,
    "job_title": "Data Analyst - Digital Marketing (all genders)",
    "skills": "flow",
    "salary_year_avg": "111175.0",
    "company_name": "iZotope"
  }
] */