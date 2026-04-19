 -- Group by
 SELECT gender
 FROM employee_demographics
 ;
 
 
 SELECT gender, AVG(age)
 FROM employee_demographics
 GROUP BY gender
 ;
 # This implies that for all of the females their average age is (38.5000) and for all the males (41.2857).
 
 SELECT *
 FROM employee_salary;
 
# if you run the above prompt, you will notice some occupation are the same, but the salaries are different. so you can use the group by clause.
 
  SELECT occupation, salary
 FROM employee_salary
 GROUP BY occupation, salary
 ; 
 # if you run the above prompt, you will notice the office manager occupation reflects twice, but their salary differs
 # so the group by clause is responsible for this.
 
 SELECT gender, AVG(age), MAX(age)
 FROM employee_demographics
 GROUP BY gender
 ;
 # The group by also allows the performance of other aggregate functions like (MAX)
 # The above Prommpt shows the average age and max age for each gender type.
 
  SELECT gender, AVG(age), MAX(age), MIN(age)
 FROM employee_demographics
 GROUP BY gender
 ;
 # The above Prommpt shows the average age, min age  and max age for each gender type.
 
 SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
 FROM employee_demographics
 GROUP BY gender
 ;
 # The above Prommpt counts the amount of rows (employee) that falls in the avg, min and max ages. for each gender. feamle = 4 and male =7
 
 -- ORDER BY
 
 SELECT *
 FROM employee_demographics
 ORDER BY first_name
 ;
 # By default the order by clause is in ascending order.
 
  SELECT *
 FROM employee_demographics
 ORDER BY first_name DESC
 ;
 # The above prompt shows the first name column in descending order.
 
   SELECT *
 FROM employee_demographics
 ORDER BY gender, age DESC
 ;
 # The above prompt shows the female gender first before the male gender and the age column in descending order.
 
 SELECT *
 FROM employee_demographics
 ORDER BY gender DESC, age DESC
 ;
 # The above prompt shows the male gender first before the female gender and the age column in descending order.
 
 SELECT *
 FROM employee_demographics
 ORDER BY 5 DESC, 4 DESC
 ;
 # The order by clause can also be runned by numbers in which a column falls on a table
 # The above prompt shows the male gender first before the female gender and the age column in descending order