Create database & 3 tables 
Employees
Departments
Salary_grade


/*Database Table employees*/
emp_id	emp_name	job_name	manager_id	hire_date	salary	    commission	dep_id
63679	SANDRINE	CLERK	    69062	    1990-12-18	900.00	    NULL	    2001
64989	ADELYNE	    SALESMAN	66928	    1991-02-20	1700.00	    400.00	    3001
65271	WADE	    SALESMAN	66928	    1991-02-22	1350.00	    600.00	    3001
65646	JONAS	    MANAGER	    68319	    1991-04-02	2957.00	    NULL	    2001
66564	MADDEN	    SALESMAN	66928	    1991-09-28	1350.00	    1500.00	    3001
66928	BLAZE	    MANAGER	    68319	    1991-05-01	2750.00	    NULL	    3001
67832	CLARE	    MANAGER	    68319	    1991-06-09	2550.00	    NULL	    1001
67858	SCARLET	    ANALYST	    65646	    1997-04-19	3100.00	    NULL	    2001
68319	KYLING	    PRESIDENT		        1991-11-18	6000.00	    NULL	    1001
68454	TUCKER	    SALESMAN	66928	    1991-09-08	1600.00	    0.00	    3001
68736	ADNERS	    CLERK	    67858	    1997-05-23	1200.00	    NULL	    2001
69000	JULIUS	    CLERK	    66928	    1991-12-03	1050.00	    NULL	    3001
69062	FRANK	    ANALYST	    65646	    1991-12-03	3100.00	    NULL	    2001
69324	MARKER	    CLERK	    67832	    1992-01-23	1400.00	    NULL	    1001


/*Database Table salary_grade*/
grade	min_salary	max_salary
1	    800	        1300
2	    1301	    1500
3	    1501	    2100
4	    2101	    3100
5	    3101	    9999


/*Database Table department*/
dep_id	dep_name	dep_location
1001	FINANCE	    SYDNEY
2001	AUDIT	    MELBOURINE
3001	MARKETING	PERTH
4001	PRODUCTION	BRISBANE




1. From the employees table return complete information about the employees.

SELECT * 
FROM employees;

/*Sample Output*/
emp_id	emp_name	job_name	manager_id	hire_date	salary	    commission	dep_id
63679	SANDRINE	CLERK	    69062	    1990-12-18	900.00	    NULL	    2001
64989	ADELYNE	    SALESMAN	66928	    1991-02-20	1700.00	    400.00	    3001
65271	WADE	    SALESMAN	66928	    1991-02-22	1350.00	    600.00	    3001
65646	JONAS	    MANAGER	    68319	    1991-04-02	2957.00	    NULL	    2001
66564	MADDEN	    SALESMAN	66928	    1991-09-28	1350.00	    1500.00	    3001
66928	BLAZE	    MANAGER	    68319	    1991-05-01	2750.00	    NULL	    3001
67832	CLARE	    MANAGER	    68319	    1991-06-09	2550.00	    NULL	    1001
67858	SCARLET	    ANALYST	    65646	    1997-04-19	3100.00	    NULL	    2001
68319	KYLING	    PRESIDENT		        1991-11-18	6000.00	    NULL	    1001
68454	TUCKER	    SALESMAN	66928	    1991-09-08	1600.00	    0.00	    3001
68736	ADNERS	    CLERK	    67858	    1997-05-23	1200.00	    NULL	    2001
69000	JULIUS	    CLERK	    66928	    1991-12-03	1050.00	    NULL	    3001
69062	FRANK	    ANALYST	    65646	    1991-12-03	3100.00	    NULL	    2001
69324	MARKER	    CLERK	    67832	    1992-01-23	1400.00	    NULL	    1001



2. From the employees table, write a SQL query to find the salaries of all employees. Return salary.

SELECT salary 
FROM employees;

/*Sample Output*/
salary
900.00
1700.00
1350.00
2957.00
1350.00
2750.00
2550.00
3100.00
6000.00
1600.00
1200.00
1050.00
3100.00
1400.00



3. From the employees table, write a SQL query to find the unique designations of the employees. Return job name. 

SELECT DISTINCT job_name 
FROM employees;

/*Sample Output*/
job_name
ANALYST
CLERK
MANAGER
PRESIDENT
SALESMAN



4. From the employees table, write a SQL query to list the employees’ names, increase their salary by 15%, and express the number of Dollars.

SELECT emp_name, '$' + CAST(FLOOR(CAST(salary AS DECIMAL(10, 2)) * 1.15) AS VARCHAR) AS Salary
FROM employees;

/*Sample Output*/
emp_name	Salary
SANDRINE	$1035
ADELYNE	    $1955
WADE	    $1552
JONAS	    $3400
MADDEN	    $1552
BLAZE	    $3162
CLARE	    $2932
SCARLET	    $3565
KYLING	    $6900
TUCKER	    $1840
ADNERS	    $1380
JULIUS	    $1207
FRANK	    $3565
MARKER	    $1610



5. From the employees table, write a SQL query to list the employees name and job name as a format of "Employee & Job"

SELECT CONCAT(emp_name, ' ', job_name) AS 'Employee & Job'
FROM employees;

/*Sample Output*/
Employee & Job
SANDRINE CLERK
ADELYNE SALESMAN
WADE SALESMAN
JONAS MANAGER
MADDEN SALESMAN
BLAZE MANAGER
CLARE MANAGER
SCARLET ANALYST
KYLING PRESIDENT
TUCKER SALESMAN
ADNERS CLERK
JULIUS CLERK
FRANK ANALYST
MARKER CLERK



6. From the employees table, write a SQL query to find those employees with a hire date in the format like February 22, 1991. Return employee ID, employee name, salary, hire date.

SELECT emp_id, emp_name, salary, FORMAT(hire_date, 'MMMM dd, yyyy') AS hire_date
FROM employees;

/*Sample Output*/
emp_id	emp_name	salary	    hire_date
63679	SANDRINE	900.00	    December    18, 1990
64989	ADELYNE	    1700.00	    February    20, 1991
65271	WADE	    1350.00	    February    22, 1991
65646	JONAS	    2957.00	    April       02, 1991
66564	MADDEN	    1350.00	    September   28, 1991
66928	BLAZE	    2750.00	    May         01, 1991
67832	CLARE	    2550.00	    June        09, 1991
67858	SCARLET	    3100.00	    April       19, 1997
68319	KYLING	    6000.00	    November    18, 1991
68454	TUCKER	    1600.00	    September   08, 1991
68736	ADNERS	    1200.00	    May         23, 1997
69000	JULIUS	    1050.00	    December    03, 1991
69062	FRANK	    3100.00	    December    03, 1991
69324	MARKER	    1400.00	    January     23, 1992



7. From the employees table, write a SQL query to count the number of characters except the spaces for each employee name. Return employee name length.

SELECT LEN(emp_name) AS length
FROM employees;

/*Sample Output*/
length
8
7
4
5
6
5
5
7
6
6
6
6
5
6



8. From the employees table, write a SQL query to find the employee ID, salary, and commission of all the employees.

SELECT emp_id,salary,commission
FROM employees;

/*Sample Output*/
emp_id	salary	    commission
63679	900.00	    NULL
64989	1700.00	    400.00
65271	1350.00	    600.00
65646	2957.00	    NULL
66564	1350.00	    1500.00
66928	2750.00	    NULL
67832	2550.00	    NULL
67858	3100.00	    NULL
68319	6000.00	    NULL
68454	1600.00	    0.00
68736	1200.00	    NULL
69000	1050.00	    NULL
69062	3100.00	    NULL
69324	1400.00	    NULL



9. From the employees table, write a SQL query to find those employees who do not belong to the department 2001. Return complete information about the employees. (Using NOT IN)

SELECT * 
FROM employees
WHERE dep_id NOT IN (2001);

/*Sample Output*/
emp_id	emp_name	job_name	manager_id	hire_date	salary	commission	dep_id
64989	ADELYNE	    SALESMAN	66928	    1991-02-20	1700.00	400.00	    3001
65271	WADE	    SALESMAN	66928	    1991-02-22	1350.00	600.00	    3001
66564	MADDEN	    SALESMAN	66928	    1991-09-28	1350.00	1500.00	    3001
66928	BLAZE	    MANAGER	    68319	    1991-05-01	2750.00	NULL	    3001
67832	CLARE	    MANAGER	    68319	    1991-06-09	2550.00	NULL	    1001
68319	KYLING	    PRESIDENT	            1991-11-18	6000.00	NULL	    1001
68454	TUCKER	    SALESMAN	66928	    1991-09-08	1600.00	0.00	    3001
69000	JULIUS	    CLERK	    66928	    1991-12-03	1050.00	NULL	    3001
69324	MARKER	    CLERK	    67832	    1992-01-23	1400.00	NULL	    1001



10. From the employees table, write a SQL query to find those employees who joined before 1991. Return complete information about the employees.

SELECT * 
FROM employees
WHERE FORMAT(hire_date, 'yyyy') < 1991;

/*Sample Output*/
emp_id	emp_name	job_name	manager_id	hire_date	salary	commission	dep_id
63679	SANDRINE	CLERK	    69062	    1990-12-18	900.00	NULL	    2001



11. From the employees table, write a SQL query to compute the average salary of those employees who work as ‘ANALYST’. Return average salary

SELECT AVG(salary) AS avg
FROM employees
WHERE job_name = 'ANALYST';

/*Sample Output*/
avg
3100.000000



12. From the employees table, write a SQL query to find the details of the employee ‘BLAZE’.

SELECT * 
FROM employees
where emp_name = 'BLAZE';

/*Sample Output*/
emp_id	emp_name	job_name	manager_id	hire_date	salary	commission	dep_id
66928	BLAZE	    MANAGER	    68319	    1991-05-01	2750.00	NULL	    3001



13. From the employees table, write a SQL query to find those employees whose salary exceeds 3000 after giving a 25% increment. Return complete information about the employees.

SELECT * 
FROM employees
where salary * 2.5 > 3000;

/*Sample Output*/
emp_id	emp_name	job_name	manager_id	hire_date	salary	commission	dep_id
64989	ADELYNE	SALESMAN	66928	1991-02-20	1700.00	400.00	3001
65271	WADE	SALESMAN	66928	1991-02-22	1350.00	600.00	3001
65646	JONAS	MANAGER	    68319	1991-04-02	2957.00	NULL	2001
66564	MADDEN	SALESMAN	66928	1991-09-28	1350.00	1500.00	3001
66928	BLAZE	MANAGER	    68319	1991-05-01	2750.00	NULL	3001
67832	CLARE	MANAGER	    68319	1991-06-09	2550.00	NULL	1001
67858	SCARLET	ANALYST	    65646	1997-04-19	3100.00	NULL	2001
68319	KYLING	PRESIDENT		    1991-11-18	6000.00	NULL	1001
68454	TUCKER	SALESMAN	66928	1991-09-08	1600.00	0.00	3001
69062	FRANK	ANALYST	    65646	1991-12-03	3100.00	NULL	2001
69324	MARKER	CLERK	    67832	1992-01-23	1400.00	NULL	1001



14. From the employees table, write a SQL query to find those employees who joined in the month January. Return complete information about the employees.

SELECT * 
FROM employees
WHERE FORMAT(hire_date, 'MMMM') = 'January';

/*Sample Output*/
emp_id	emp_name	job_name	manager_id	hire_date	salary	commission	dep_id
69324	MARKER	    CLERK	    67832	    1992-01-23	1400.00	NULL	    1001



15. From the employees table, write a SQL query to find those employees who joined before 1st April 1991. Return employee ID, employee name, hire date and salary.


SELECT emp_id,emp_name,hire_date,salary
FROM employees
WHERE hire_date < '04-01-1991';

/*Sample Output*/
emp_id	emp_name	hire_date	salary
63679	SANDRINE	1990-12-18	900.00
64989	ADELYNE	    1991-02-20	1700.00
65271	WADE	    1991-02-22	1350.00



16. From the employees table, write a SQL query to find the name and salary of the employee FRANK.

SELECT emp_name,salary
FROM employees
WHERE emp_name = 'FRANK';

/*Sample Output*/
emp_name	salary
FRANK	    3100.00


17. From the employees table, write a SQL query to list all the employees except PRESIDENT and MANAGER in ascending order of salaries. Return complete information about the employees. (Using Order By)

SELECT *
FROM employees
WHERE job_name != 'MANAGER' and job_name != 'PRESIDENT'
ORDER BY salary asc;

/*Sample Output*/
emp_id	emp_name	job_name	manager_id	hire_date	    salary	    commission	dep_id
63679	SANDRINE	CLERK	    69062	    1990-12-18	    900.00	    NULL	    2001
69000	JULIUS	    CLERK	    66928	    1991-12-03	    1050.00	    NULL	    3001
68736	ADNERS	    CLERK	    67858	    1997-05-23	    1200.00	    NULL	    2001
65271	WADE	    SALESMAN	66928	    1991-02-22	    1350.00	    600.00	    3001
66564	MADDEN	    SALESMAN	66928	    1991-09-28	    1350.00	    1500.00	    3001
69324	MARKER	    CLERK	    67832	    1992-01-23	    1400.00	    NULL	    1001
68454	TUCKER	    SALESMAN	66928	    1991-09-08	    1600.00	    0.00	    3001
64989	ADELYNE	    SALESMAN	66928	    1991-02-20	    1700.00	    400.00	    3001
67858	SCARLET	    ANALYST	    65646	    1997-04-19	    3100.00	    NULL	    2001
69062	FRANK	    ANALYST	    65646	    1991-12-03	    3100.00	    NULL	    2001



18. From the employees table, write a SQL query to find the highest salary. Return the highest salary.

SELECT MAX(salary) as max
FROM employees;

/*Sample Output*/
max
6000.00



19. From the employees table, write a SQL query to find the average salary and average total remuneration (salary and commission) for each type of job. Return name, average salary and average total remuneration. (Using GROUP BY)

SELECT job_name, AVG(salary) AS avg_salary, AVG(salary + COALESCE(commission, 0)) AS avg_total_remuneration
FROM employees
GROUP BY job_name;

/*Sample Output*/
job_name	avg_salary	avg_total_remuneration
ANALYST	    3100.000000	3100.000000
CLERK	    1137.500000	1137.500000
MANAGER	    2752.333333	2752.333333
PRESIDENT	6000.000000	6000.000000
SALESMAN	1500.000000	2125.000000



20. From the employees table, write a SQL query to find those employees who work in the department ID 1001 or 2001. Return employee ID, employee name, department ID, department location, and department name.(Using IN clause)

SELECT e.emp_id, e.emp_name, e.dep_id, d.dep_location, d.dep_name
FROM employees e, department d 
WHERE e.dep_id = d.dep_id
AND e.dep_id IN (1001, 2001);

/*Sample Output*/
emp_id	emp_name	dep_id	dep_location	dep_name
63679	SANDRINE	2001	MELBOURINE	    AUDIT
65646	JONAS	    2001	MELBOURINE	    AUDIT
67832	CLARE	    1001	SYDNEY  	    FINANCE
67858	SCARLET	    2001	MELBOURINE	    AUDIT
68319	KYLING	    1001	SYDNEY  	    FINANCE
68736	ADNERS	    2001	MELBOURINE	    AUDIT
69062	FRANK	    2001	MELBOURINE	    AUDIT
69324	MARKER	    1001	SYDNEY	        FINANCE



21. From the table, write a SQL query to list the managers and number of employees work under them. Sort the result set in ascending order on manager. Return manager ID and number of employees under them.(Using GROUP BY & ORDER BY)

SELECT manager_id, COUNT(emp_id) AS count
FROM employees
WHERE manager_id !=''
GROUP BY manager_id
ORDER BY manager_id ASC;

/*Sample Output*/
manager_id	count
65646	    2
66928	    5
67832	    1
67858	    1
68319	    3
69062	    1



