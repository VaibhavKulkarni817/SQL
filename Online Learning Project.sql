-- create database learning_platform;

-- CREATE TABLE users (
--     user_id INT PRIMARY KEY,
--     full_name VARCHAR(100),
--     email VARCHAR(100),
--     signup_date DATE,
--     country VARCHAR(50)
-- );

-- CREATE TABLE instructors (
--     instructor_id INT PRIMARY KEY,
--     instructor_name VARCHAR(100),
--     expertise VARCHAR(50),
--     joining_date DATE
-- );

-- CREATE TABLE courses (
--     course_id INT PRIMARY KEY,
--     course_title VARCHAR(150),
--     category VARCHAR(50),
--     instructor_id INT,
--     price DECIMAL(8,2),
--     created_date DATE,
--     FOREIGN KEY (instructor_id) REFERENCES instructors(instructor_id)
-- );

-- CREATE TABLE enrollments (
--     enrollment_id INT PRIMARY KEY,
--     user_id INT,
--     course_id INT,
--     enrollment_date DATE,
--     FOREIGN KEY (user_id) REFERENCES users(user_id),
--     FOREIGN KEY (course_id) REFERENCES courses(course_id)
-- );

-- CREATE TABLE lessons (
--     lesson_id INT PRIMARY KEY,
--     course_id INT,
--     lesson_title VARCHAR(150),
--     duration_minutes INT,
--     FOREIGN KEY (course_id) REFERENCES courses(course_id)
-- );

-- CREATE TABLE progress (
--     progress_id INT PRIMARY KEY,
--     enrollment_id INT,
--     completed_lessons INT,
--     total_lessons INT,
--     last_access_date DATE,
--     FOREIGN KEY (enrollment_id) REFERENCES enrollments(enrollment_id)
-- );

-- CREATE TABLE payments (
--     payment_id INT PRIMARY KEY,
--     user_id INT,
--     course_id INT,
--     payment_date DATE,
--     amount DECIMAL(8,2),
--     payment_status VARCHAR(20)
-- );

-- CREATE TABLE reviews (
--     review_id INT PRIMARY KEY,
--     user_id INT,
--     course_id INT,
--     rating INT,
--     review_date DATE
-- );

-- INSERT INTO users VALUES
-- (1,'Rahul Sharma','rahul1@gmail.com','2024-01-05','India'),
-- (2,'Anjali Verma','anjali2@gmail.com','2024-01-07','India'),
-- (3,'Amit Patil','amit3@gmail.com','2024-01-10','India'),
-- (4,'Neha Kulkarni','neha4@gmail.com','2024-01-15','India'),
-- (5,'Rohan Deshmukh','rohan5@gmail.com','2024-01-18','India'),
-- (6,'Pooja Nair','pooja6@gmail.com','2024-01-20','India'),
-- (7,'Saurabh Gupta','saurabh7@gmail.com','2024-01-22','India'),
-- (8,'Kavita Joshi','kavita8@gmail.com','2024-01-25','India'),
-- (9,'Akash Yadav','akash9@gmail.com','2024-01-28','India'),
-- (10,'Snehal Patil','snehal10@gmail.com','2024-02-01','India'),

-- (11,'Vikas Singh','vikas11@gmail.com','2024-02-03','India'),
-- (12,'Priya Mehta','priya12@gmail.com','2024-02-05','India'),
-- (13,'Nitin Kale','nitin13@gmail.com','2024-02-07','India'),
-- (14,'Shubham More','shubham14@gmail.com','2024-02-10','India'),
-- (15,'Aishwarya Pawar','aishwarya15@gmail.com','2024-02-12','India'),
-- (16,'Manish Raut','manish16@gmail.com','2024-02-14','India'),
-- (17,'Komal Jadhav','komal17@gmail.com','2024-02-16','India'),
-- (18,'Deepak Mishra','deepak18@gmail.com','2024-02-18','India'),
-- (19,'Sonali Kulkarni','sonali19@gmail.com','2024-02-20','India'),
-- (20,'Harsh Vardhan','harsh20@gmail.com','2024-02-22','India'),

-- (21,'Kiran Patole','kiran21@gmail.com','2024-02-24','India'),
-- (22,'Ritu Malhotra','ritu22@gmail.com','2024-02-26','India'),
-- (23,'Abhishek Tiwari','abhishek23@gmail.com','2024-02-28','India'),
-- (24,'Nikita Chavan','nikita24@gmail.com','2024-03-01','India'),
-- (25,'Yogesh Bhosale','yogesh25@gmail.com','2024-03-03','India'),
-- (26,'Pallavi Desai','pallavi26@gmail.com','2024-03-05','India'),
-- (27,'Pranav Kulkarni','pranav27@gmail.com','2024-03-07','India'),
-- (28,'Shital Sawant','shital28@gmail.com','2024-03-09','India'),
-- (29,'Rakesh Kumar','rakesh29@gmail.com','2024-03-11','India'),
-- (30,'Meenal Joshi','meenal30@gmail.com','2024-03-13','India'),

-- (31,'Arjun Rao','arjun31@gmail.com','2024-03-15','India'),
-- (32,'Tanvi Gokhale','tanvi32@gmail.com','2024-03-17','India'),
-- (33,'Siddharth Jain','siddharth33@gmail.com','2024-03-19','India'),
-- (34,'Mayur Shinde','mayur34@gmail.com','2024-03-21','India'),
-- (35,'Riya Kapoor','riya35@gmail.com','2024-03-23','India'),
-- (36,'Omkar Patil','omkar36@gmail.com','2024-03-25','India'),
-- (37,'Prachi Kulkarni','prachi37@gmail.com','2024-03-27','India'),
-- (38,'Ankit Agarwal','ankit38@gmail.com','2024-03-29','India'),
-- (39,'Shruti Bansal','shruti39@gmail.com','2024-03-31','India'),
-- (40,'Nilesh Jagtap','nilesh40@gmail.com','2024-04-02','India'),

-- (41,'Vaishali Thakur','vaishali41@gmail.com','2024-04-04','India'),
-- (42,'Aditya Shetty','aditya42@gmail.com','2024-04-06','India'),
-- (43,'Monika Arora','monika43@gmail.com','2024-04-08','India'),
-- (44,'Sanket Pawar','sanket44@gmail.com','2024-04-10','India'),
-- (45,'Isha Roy','isha45@gmail.com','2024-04-12','India'),
-- (46,'Naveen Verma','naveen46@gmail.com','2024-04-14','India'),
-- (47,'Pankaj Yadav','pankaj47@gmail.com','2024-04-16','India'),
-- (48,'Rekha Nimbalkar','rekha48@gmail.com','2024-04-18','India'),
-- (49,'Ashwin Naik','ashwin49@gmail.com','2024-04-20','India'),
-- (50,'Bhavana Kulkarni','bhavana50@gmail.com','2024-04-22','India'),

-- (51,'Suresh Reddy','suresh51@gmail.com','2024-04-24','India'),
-- (52,'Lavanya Iyer','lavanya52@gmail.com','2024-04-26','India'),
-- (53,'Ritvik Malhotra','ritvik53@gmail.com','2024-04-28','India'),
-- (54,'Swati Chitale','swati54@gmail.com','2024-04-30','India'),
-- (55,'Kunal Shah','kunal55@gmail.com','2024-05-02','India'),
-- (56,'Payal Jain','payal56@gmail.com','2024-05-04','India'),
-- (57,'Mohit Aggarwal','mohit57@gmail.com','2024-05-06','India'),
-- (58,'Aarti Deshpande','aarti58@gmail.com','2024-05-08','India'),
-- (59,'Ramesh Iyer','ramesh59@gmail.com','2024-05-10','India'),
-- (60,'Priti Choudhary','priti60@gmail.com','2024-05-12','India');

-- INSERT INTO instructors VALUES
-- (1,'Rohit Mehta','Data Analytics','2022-11-15'),
-- (2,'Sneha Joshi','Python','2023-01-10'),
-- (3,'Aakash Singh','SQL','2023-02-05'),
-- (4,'Pooja Kulkarni','Power BI','2023-03-12'),
-- (5,'Nitin Verma','Machine Learning','2023-04-20'),
-- (6,'Kavita Nair','Statistics','2023-05-18'),
-- (7,'Amit Deshpande','Advanced Excel','2023-06-25'),
-- (8,'Neha Agarwal','Data Visualization','2023-07-14'),
-- (9,'Sandeep Patil','Business Analytics','2023-08-09'),
-- (10,'Riya Malhotra','AI Fundamentals','2023-09-01');

-- INSERT INTO courses VALUES
-- (1,'SQL for Beginners','SQL',3,999,'2023-06-01'),
-- (2,'Advanced SQL Queries','SQL',3,1499,'2023-07-10'),
-- (3,'Python Programming Basics','Python',2,1199,'2023-06-15'),
-- (4,'Advanced Python for Data Analysis','Python',2,1799,'2023-08-05'),
-- (5,'Power BI Fundamentals','Power BI',4,1299,'2023-07-01'),
-- (6,'Power BI Advanced Dashboards','Power BI',4,1999,'2023-09-01'),
-- (7,'Data Analytics with Excel','Excel',7,999,'2023-05-20'),
-- (8,'Statistics for Data Science','Statistics',6,1499,'2023-06-25'),
-- (9,'Machine Learning Basics','Machine Learning',5,2499,'2023-08-15'),
-- (10,'Applied Machine Learning','Machine Learning',5,2999,'2023-10-01'),
-- (11,'Data Visualization with Python','Visualization',8,1599,'2023-07-20'),
-- (12,'Business Analytics Foundations','Business Analytics',9,1399,'2023-08-10'),
-- (13,'AI Fundamentals for Beginners','AI',10,1999,'2023-09-05'),
-- (14,'Advanced Excel for Professionals','Excel',7,1299,'2023-06-10'),
-- (15,'Complete Data Analyst Career Path','Career Track',1,4999,'2023-10-15');

-- INSERT INTO enrollments VALUES
-- (1,1,1,'2024-02-01'),
-- (2,2,1,'2024-02-02'),
-- (3,3,2,'2024-02-03'),
-- (4,4,3,'2024-02-04'),
-- (5,5,3,'2024-02-05'),
-- (6,6,4,'2024-02-06'),
-- (7,7,5,'2024-02-07'),
-- (8,8,5,'2024-02-08'),
-- (9,9,6,'2024-02-09'),
-- (10,10,6,'2024-02-10'),

-- (11,11,7,'2024-02-11'),
-- (12,12,7,'2024-02-12'),
-- (13,13,8,'2024-02-13'),
-- (14,14,8,'2024-02-14'),
-- (15,15,9,'2024-02-15'),
-- (16,16,9,'2024-02-16'),
-- (17,17,10,'2024-02-17'),
-- (18,18,10,'2024-02-18'),
-- (19,19,11,'2024-02-19'),
-- (20,20,11,'2024-02-20'),

-- (21,21,12,'2024-02-21'),
-- (22,22,12,'2024-02-22'),
-- (23,23,13,'2024-02-23'),
-- (24,24,13,'2024-02-24'),
-- (25,25,14,'2024-02-25'),
-- (26,26,14,'2024-02-26'),
-- (27,27,15,'2024-02-27'),
-- (28,28,15,'2024-02-28'),
-- (29,29,1,'2024-03-01'),
-- (30,30,2,'2024-03-02'),

-- (31,31,3,'2024-03-03'),
-- (32,32,4,'2024-03-04'),
-- (33,33,5,'2024-03-05'),
-- (34,34,6,'2024-03-06'),
-- (35,35,7,'2024-03-07'),
-- (36,36,8,'2024-03-08'),
-- (37,37,9,'2024-03-09'),
-- (38,38,10,'2024-03-10'),
-- (39,39,11,'2024-03-11'),
-- (40,40,12,'2024-03-12');


-- INSERT INTO progress VALUES
-- (1,1,10,10,'2024-03-10'),
-- (2,2,8,10,'2024-03-08'),
-- (3,3,6,10,'2024-03-05'),
-- (4,4,4,12,'2024-03-06'),
-- (5,5,12,12,'2024-03-12'),
-- (6,6,9,12,'2024-03-11'),
-- (7,7,7,10,'2024-03-09'),
-- (8,8,10,10,'2024-03-10'),
-- (9,9,6,12,'2024-03-08'),
-- (10,10,11,12,'2024-03-11'),

-- (11,11,8,10,'2024-03-07'),
-- (12,12,10,10,'2024-03-09'),
-- (13,13,6,8,'2024-03-06'),
-- (14,14,8,8,'2024-03-10'),
-- (15,15,4,15,'2024-03-05'),
-- (16,16,10,15,'2024-03-09'),
-- (17,17,6,15,'2024-03-07'),
-- (18,18,15,15,'2024-03-12'),
-- (19,19,7,10,'2024-03-08'),
-- (20,20,10,10,'2024-03-11'),

-- (21,21,8,10,'2024-03-09'),
-- (22,22,6,10,'2024-03-07'),
-- (23,23,9,12,'2024-03-10'),
-- (24,24,12,12,'2024-03-12'),
-- (25,25,5,8,'2024-03-06'),
-- (26,26,8,8,'2024-03-10'),
-- (27,27,10,20,'2024-03-07'),
-- (28,28,20,20,'2024-03-12'),
-- (29,29,6,10,'2024-03-08'),
-- (30,30,9,10,'2024-03-10'),

-- (31,31,7,12,'2024-03-09'),
-- (32,32,10,12,'2024-03-11'),
-- (33,33,6,10,'2024-03-08'),
-- (34,34,8,12,'2024-03-10'),
-- (35,35,9,10,'2024-03-11'),
-- (36,36,6,8,'2024-03-07'),
-- (37,37,12,15,'2024-03-10'),
-- (38,38,15,15,'2024-03-12'),
-- (39,39,7,10,'2024-03-09'),
-- (40,40,9,10,'2024-03-11');

-- INSERT INTO payments VALUES
-- (1,1,1,'2024-02-01',999,'Success'),
-- (2,2,1,'2024-02-02',999,'Success'),
-- (3,3,2,'2024-02-03',1499,'Success'),
-- (4,4,3,'2024-02-04',1199,'Success'),
-- (5,5,3,'2024-02-05',1199,'Failed'),
-- (6,6,4,'2024-02-06',1799,'Success'),
-- (7,7,5,'2024-02-07',1299,'Success'),
-- (8,8,5,'2024-02-08',1299,'Success'),
-- (9,9,6,'2024-02-09',1999,'Failed'),
-- (10,10,6,'2024-02-10',1999,'Success'),

-- (11,11,7,'2024-02-11',999,'Success'),
-- (12,12,7,'2024-02-12',999,'Success'),
-- (13,13,8,'2024-02-13',1499,'Success'),
-- (14,14,8,'2024-02-14',1499,'Success'),
-- (15,15,9,'2024-02-15',2499,'Failed'),
-- (16,16,9,'2024-02-16',2499,'Success'),
-- (17,17,10,'2024-02-17',2999,'Success'),
-- (18,18,10,'2024-02-18',2999,'Success'),
-- (19,19,11,'2024-02-19',1599,'Success'),
-- (20,20,11,'2024-02-20',1599,'Failed'),

-- (21,21,12,'2024-02-21',1399,'Success'),
-- (22,22,12,'2024-02-22',1399,'Success'),
-- (23,23,13,'2024-02-23',1999,'Success'),
-- (24,24,13,'2024-02-24',1999,'Success'),
-- (25,25,14,'2024-02-25',1299,'Failed'),
-- (26,26,14,'2024-02-26',1299,'Success'),
-- (27,27,15,'2024-02-27',4999,'Success'),
-- (28,28,15,'2024-02-28',4999,'Success'),
-- (29,29,1,'2024-03-01',999,'Success'),
-- (30,30,2,'2024-03-02',1499,'Failed');

-- INSERT INTO reviews VALUES
-- (1,1,1,5,'2024-03-01'),
-- (2,2,1,4,'2024-03-02'),
-- (3,3,2,5,'2024-03-03'),
-- (4,4,3,4,'2024-03-04'),
-- (5,5,3,3,'2024-03-05'),
-- (6,6,4,5,'2024-03-06'),
-- (7,7,5,4,'2024-03-07'),
-- (8,8,5,5,'2024-03-08'),
-- (9,9,6,3,'2024-03-09'),
-- (10,10,6,4,'2024-03-10'),

-- (11,11,7,5,'2024-03-11'),
-- (12,12,7,4,'2024-03-12'),
-- (13,13,8,4,'2024-03-13'),
-- (14,14,8,5,'2024-03-14'),
-- (15,15,9,3,'2024-03-15'),
-- (16,16,9,4,'2024-03-16'),
-- (17,17,10,5,'2024-03-17'),
-- (18,18,10,4,'2024-03-18'),
-- (19,19,11,5,'2024-03-19'),
-- (20,20,12,4,'2024-03-20');


-- Q1.Category-wise average course price
-- SELECT category, ROUND(AVG(price),2) AS avg_price
-- FROM courses
-- GROUP BY category;

-- Q2.Payment status count 
-- SELECT 
--     payment_status,
--     COUNT(*) AS total_transactions
-- FROM payments
-- GROUP BY payment_status;

-- Q3.Rank courses by price
-- SELECT 
--     course_title,
--     price,
--     RANK() OVER (ORDER BY price DESC) AS price_rank
-- FROM courses;

-- Q4.Monthly enrollment count
-- SELECT 
--     MONTH(enrollment_date) AS month,
--     COUNT(*) AS enrollments
-- FROM enrollments
-- GROUP BY MONTH(enrollment_date);

-- Q5.Courses with more than 2 enrollments
-- SELECT course_id, COUNT(*) AS enrollments
-- FROM enrollments
-- GROUP BY course_id
-- HAVING COUNT(*) > 2;

-- Q6.Top 5 highest priced courses
-- SELECT course_title, price
-- FROM courses
-- ORDER BY price DESC
-- LIMIT 5;

-- Q7.Courses with above-average price
-- SELECT course_title, price
-- FROM courses
-- WHERE price > (SELECT AVG(price) FROM courses);

-- Q8.Courses that generated revenue
-- SELECT course_title
-- FROM courses
-- WHERE course_id IN (
--     SELECT DISTINCT course_id
--     FROM payments
--     WHERE payment_status = 'Success'
-- );

-- Q9.Instructors who teach more than one course
-- SELECT instructor_name
-- FROM instructors
-- WHERE instructor_id IN (
--     SELECT instructor_id
--     FROM courses
--     GROUP BY instructor_id
--     HAVING COUNT(course_id) > 1
-- );

-- Q10.Users who completed more than 80% of lessons
-- SELECT user_id
-- FROM enrollments
-- WHERE enrollment_id IN (
--     SELECT enrollment_id
--     FROM progress
--     WHERE completed_lessons * 100.0 / total_lessons > 80
-- );

-- Q11.Display user names with the courses they enrolled in
-- SELECT u.full_name, c.course_title
-- FROM users u, enrollments e, courses c
-- WHERE u.user_id = e.user_id
-- AND e.course_id = c.course_id;

-- Q12.Show course title with student progress
-- SELECT c.course_title, pr.completed_lessons, pr.total_lessons
-- FROM courses c, enrollments e, progress pr
-- WHERE c.course_id = e.course_id
-- AND e.enrollment_id = pr.enrollment_id;

-- Q13.List users who made successful payments
-- SELECT u.full_name, p.amount
-- FROM users u, payments p
-- WHERE u.user_id = p.user_id
-- AND p.payment_status = 'Success';

-- Q14.Find courses with the same price
-- SELECT c1.course_title, c2.course_title, c1.price
-- FROM courses c1, courses c2
-- WHERE c1.price = c2.price
-- AND c1.course_id <> c2.course_id;

-- Q15.Students with same course enrollment
-- SELECT e1.user_id, e2.user_id, e1.course_id
-- FROM enrollments e1, enrollments e2
-- WHERE e1.course_id = e2.course_id
-- AND e1.user_id <> e2.user_id;

















