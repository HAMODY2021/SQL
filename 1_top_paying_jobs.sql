-- question: what aere the top paying data analyst jobs
-- - identify the top 10 highest paying data analyst jobs that ar availabe remotely
-- - focus on job postingd with specefied salaries
-- - why? highlight on the top paying opportunities for data analysts,offering insights to employees
select 
       job_id,
       job_title,
       job_location,
       job_schedule_type,
       salary_year_avg,
       job_posted_date,
       name as company_name
FROM
       job_postings_fact
left join company_dim on job_postings_fact.company_id=company_dim.company_id
where 
       job_title_short= 'Data Analyst' AND
       job_location='Anywhere' AND
       salary_year_avg is not null
order by 
        salary_year_avg DESC
limit 10
