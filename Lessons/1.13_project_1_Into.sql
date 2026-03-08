SELECT  job_title_short
FROM
    job_postings_fact
WHERE 
    job_country = 'Ghana' 
AND 
    job_title_short = 'Data Engineer';
