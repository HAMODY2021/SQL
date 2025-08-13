/*
QUESTION: WHAT ARE THE MOST IN-DEMAND SKILLS FOR DATA ANALYSTS?
- join job postings to inner join table similar to query 2
- identify the top 5 in-demand skills for adata analyst
- focus on all job postingd
- why? retrieves the top 5 skills with the highest demand in the job market
- providing insights into the most valuable skills for job seekers */  
select 
     skills,
     count(skills_job_dim.skill_id) as demand_count
FROM
     job_postings_fact
inner join skills_job_dim on job_postings_fact.job_id=skills_job_dim.job_id
inner join skills_dim on skills_job_dim.skill_id=skills_dim.skill_id
where 
      job_title_short='Data Analyst' AND
      job_work_from_home= True
group by 
         skills
order by demand_count desc
limit 5