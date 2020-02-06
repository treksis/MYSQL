#1. Write a SQL statement to change the email column of employees table with 'not available' for all employees.

UPDATE employees 
SET email='not available';

#2. Write a SQL statement to change the email and commission_pct column of employees table with 'not available' and 0.10 for all employees.

UPDATE employees
SET email='not available',
commission_pct=0.10;

#3. Write a SQL statement to change the email and commission_pct column of employees table with 'not available' and 0.10 for those employees whose department_id is 110.

UPDATE employees
SET email='not available',
commission_pct=0.10
WHERE department_id=110;

#4. Write a SQL statement to change the email column of employees table with 'not available' for those employees whose department_id is 80 and gets a commission is less than .20%

UPDATE employees
SET email='not available'
WHERE department_id=80 and commission_pct<0.2;

#5. Write a SQL statement to change the email column of employees table with 'not available' for those employees who belongs to the 'Accouning' department.

UPDATE employees
SET email='not available'
WHERE department_id=(
select department_id
from departments
where department_name='Accounting');

#6. Write a SQL statement to change salary of employee to 8000 whose ID is 105, if the existing salary is less than 5000.

UPDATE employees
SET SALARY = 8000
WHERE EMPLOYEE_ID = 105
AND SALARY < 5000;

#7. Write a SQL statement to change job ID of employee which ID is 118, to SH_CLERK if the employee belongs to department, 
# which ID is 30 and the existing job ID does not start with SH.

UPDATE employees
SET JOB_ID = 'SH_CLERK'
WHERE EMPLYOEE_ID = 118
AND department_id = 30
and not job_id like 'sh%';

#8. Write a SQL statement to increase the salary of employees under the department 40, 
# 90 and 110 according to the company rules that, 
# salary will be increased by 25% for the department 40, 
# 15% for department 90 and 10% for the department 110 
# and the rest of the departments will remain same.

UPDATE employees SET salary= CASE department_id 
                          WHEN 40 THEN salary+(salary*.25) 
                          WHEN 90 THEN salary+(salary*.15)
                          WHEN 110 THEN salary+(salary*.10)
                          ELSE salary
                        END
             WHERE department_id IN (40,50,50,60,70,80,90,110);


#9. Write a SQL statement to increase the minimum and maximum salary of PU_CLERK by 2000 
# as well as the salary for those employees by 20% and commission percent by .10.

UPDATE jobs,employees
SET jobs.min_salary=jobs.min_salary+2000,
jobs.max_salary=jobs.max_salary+2000,
employees.salary=employees.salary+(employees.salary*.20),
employees.commission_pct=employees.commission_pct+.10
WHERE jobs.job_id='PU_CLERK'
AND employees.job_id='PU_CLERK';

