SELECT 
    job_id,
    job_title_short,
    salary_year_avg,
    company_id
FROM
    job_postings_fact
LIMIT 10;        

SELECT * --table_name,column_name,data_type,table_constraints
FROM information_schema.key_column_usage
WHERE table_catalog = 'data_jobs';   

SELECT *
FROM skills_dim
LIMIT 10;


SELECT 
    jpf.job_id,
    jpf.job_title_short,
    sd.skill_id,
    sd_2.skills
FROM 
    job_postings_fact AS jpf
LEFT JOIN 
    skills_job_dim AS sd
ON 
    jpf.job_id = sd.job_id
LEFT JOIN 
    skills_dim AS sd_2
ON
    sd.skill_id = sd_2.skill_id;         

SELECT 
    jpf.job_id,
    jpf.job_title_short,
    sd.skill_id,
    sd_2.skills
FROM 
    job_postings_fact AS jpf
INNER JOIN 
    skills_job_dim AS sd
ON 
    jpf.job_id = sd.job_id
INNER JOIN 
    skills_dim AS sd_2
ON
    sd.skill_id = sd_2.skill_id;         



    
