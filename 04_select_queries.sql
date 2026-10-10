-- 1. List all jobs with their company names
SELECT
j.id,
j.title,
c.name AS company_name,
j.salary
FROM jobs AS j
INNER JOIN companies AS c
ON j.company_id = c.id;

-- 2. Show the required skills for each job
SELECT
j.title AS job_title,
s.name AS skill_name
FROM jobs AS j
INNER JOIN job_skills AS js
ON j.id = js.job_id
INNER JOIN skills AS s
ON js.skill_id = s.id
ORDER BY j.title, s.name;

-- 3. Show the skills of each user
SELECT
u.name AS user_name,
s.name AS skill_name
FROM users AS u
INNER JOIN user_skills AS us
ON u.id = us.user_id
INNER JOIN skills AS s
ON us.skill_id = s.id
ORDER BY u.name, s.name;

-- 4. Show job applications with user and job details
SELECT
u.name AS user_name,
j.title AS job_title,
a.status,
a.apply_at
FROM applications AS a
INNER JOIN users AS u
ON a.user_id = u.id
INNER JOIN jobs AS j
ON a.job_id = j.id
ORDER BY a.apply_at;

-- 5. Find jobs that require Python
SELECT
j.title,
c.name AS company_name
FROM jobs AS j
INNER JOIN companies AS c
ON j.company_id = c.id
INNER JOIN job_skills AS js
ON j.id = js.job_id
INNER JOIN skills AS s
ON js.skill_id = s.id
WHERE s.name = 'Python';


-- 6. Find jobs matching a user's skills
SELECT DISTINCT
u.name AS user_name,
j.title AS job_title,
c.name AS company_name,
s.name AS matching_skill
FROM users AS u
INNER JOIN user_skills AS us
ON u.id = us.user_id
INNER JOIN skills AS s
ON us.skill_id = s.id
INNER JOIN job_skills AS js
ON s.id = js.skill_id
INNER JOIN jobs AS j
ON js.job_id = j.id
INNER JOIN companies AS c
ON j.company_id = c.id
WHERE u.id = 1
ORDER BY j.title, s.name;