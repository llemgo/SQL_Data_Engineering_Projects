SELECT  job_title_short
FROM
    job_postings_fact
WHERE 
    job_country = 'Togo' 
AND 
    job_title_short = 'Data Engineer';
