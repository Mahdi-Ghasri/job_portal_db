-- 1. Insert users
INSERT INTO users (name, email, password, phone)
VALUES
('Ali Ahmadi', 'ali@example.com', 'hashed_password_1', '09121111111'),
('Sara Mohammadi', 'sara@example.com', 'hashed_password_2', '09122222222'),
('Reza Karimi', 'reza@example.com', 'hashed_password_3', '09123333333');

-- 2. Insert companies
INSERT INTO companies (name, web, city)
VALUES
('Tech Solutions', 'https://techsolutions.example', 'Tehran'),
('Digital Future', 'https://digitalfuture.example', 'Shiraz');

-- 3. Insert skills
INSERT INTO skills (name)
VALUES
('Python'),
('Django'),
('FastAPI'),
('SQL'),
('REST API'),
('Git');

-- 4. Insert jobs
INSERT INTO jobs (company_id, title, description, salary)
VALUES
(1, 'Python Developer', 'Develop and maintain Python applications.', 45000.00),
(1, 'Backend Developer', 'Build backend services and REST APIs.', 55000.00),
(2, 'Junior Python Developer', 'Assist with Python development and database tasks.', 35000.00);

-- 5. Insert user skills
INSERT INTO user_skills (user_id, skill_id)
VALUES
(1, 1),
(1, 2),
(1, 4),
(2, 1),
(2, 3),
(2, 5),
(3, 1),
(3, 4),
(3, 6);

-- 6. Insert job skills
INSERT INTO job_skills (job_id, skill_id)
VALUES
(1, 1),
(1, 2),
(1, 4),
(2, 1),
(2, 3),
(2, 5),
(3, 1),
(3, 6);

-- 7. Insert job applications
INSERT INTO applications (user_id, job_id, status)
VALUES
(1, 1, 'pending'),
(2, 2, 'accepted'),
(3, 1, 'rejected'),
(1, 3, 'pending');