# 8kyu: Expressions Matter
#Task
#Given three integers a ,b ,c, return the largest number obtained after inserting the following operators and brackets: +, *, ()
#In other words , try every combination of a,b,c with [*+()] , and return the Maximum Obtained

SELECT 
	GREATEST(
				a + b + c,
				a * b * c,
				a + b * c,
				(a + b) * c,
				a * (b+c)
			) AS res	
FROM expression_matter;

# 8kyu: Century From Year
#The first century spans from the year 1 up to and including the year 100, 
#the second century - from the year 101 up to and including the year 200, etc.

SELECT CEIL(yr/100.00) AS century
FROM years;

# 8kyu: Given the following table 'decimals':
# Given the following table 'decimals':
#** decimals table schema **
# id
# number1
# number2
# Return a table with one column (mod) which is the output of number1 modulus number2.

SELECT number1%number2 AS mod
FROM decimals;

# 8kyu: Easy SQL: Square Root and Log
# Given the following table 'decimals':
#** decimals table schema **
# id
# number1
# number2
# Return a table with two columns (root, log) where the values in root are the square root of those provided in number1 and the values in log are changed to
# a base 10 logarithm from those in number2.

SELECT SQRT(number1) AS root, 
      LOG(number2) AS log
FROM decimals;

# 8kyu: Easy SQL: Rounding Decimals
#Given the following table 'decimals':
#** decimals table schema **
#id
#number1
#number2
#Return a table with two columns (number1, number2), the value in number1 should be rounded down and the value in number2 should be rounded up.

SELECT FLOOR(number1) AS number1, CEIL(number2) AS number2
FROM decimals;

# 8kyu: Easy SQL: Convert to Hexadecimal
#to hexYou have access to a table of monsters as follows:
#monsters table schema
#id
#name
#legs
#arms
#characteristics
#Your task is to turn the numeric columns (arms, legs) into equivalent hexadecimal values.
#output table schema
#legs
#arms

SELECT TO_HEX(arms) AS arms, TO_HEX(legs) AS legs
FROM monsters;

# 8 kyu: Easy SQL: LowerCase
#Given a demographics table in the following format:
#** demographics table schema **
#id
#name
#birthday
#race
#you need to return the same table where all letters are lowercase in the race column.

SELECT id, name, birthday, LOWER(race) AS race
FROM demographics;

# 8 kyu: Easy SQL - Ordering
# Your task is to sort the information in the provided table 'companies' by number of employees (high to low). Returned table should be in the same format as provided:
# companies table schema
# id
# ceo
# motto
# employees
# Solution should use pure SQL.

SELECT *
FROM companies
ORDER BY employees DESC;

# 8 kyu: Collect Tuition (SQL for Beginners #4) 
#You are working for a local school, and you are responsible for collecting tuition from students. 
#You have a list of all students, some of them have already paid tution and some haven't. Write a select statement 
#to get a list of all students who haven't paid their tuition yet. The list should include all the data available about these students.
#students table schema
#name (string)
#age (integer)
#semester (integer)
#mentor (string)
#tuition_received (Boolean)
#NOTE: Your solution should use pure SQL

SELECT *
FROM students
WHERE tuition_received = False;

# 8kyu: Register for the Party (SQL for Beginners #3)
#You received an invitation to an amazing party. Now you need to write an insert statement to add yourself to the table of participants.
#participants table schema
#name (string)
#age (integer)
#attending (boolean)
#NOTES:
#Since alcohol will be served, you can only attend if you are 21 or older
#You can't attend if the attending column returns anything but true
#NOTE: Your solution should use pure SQL

INSERT INTO participants
(name, age, attending)
VALUES
('Anna', 30, True);

SELECT * FROM participants;

# 8kyu: On the Canadian Border (SQL for Beginners #2)
#You are a border guard sitting on the Canadian border. You were given a list of travelers who have arrived at your gate today. 
#You know that American, Mexican, and Canadian citizens don't need visas, so they can just continue their trips. You don't need to 
#check their passports for visas! You only need to check the passports of citizens of all other countries!
#Select names, and countries of origin of all the travelers, excluding anyone from Canada, Mexico, or The US.
#travelers table schema
#name
#country
#NOTE: The United States is written as 'USA' in the table.
#NOTE: Your solution should use pure SQL.

SELECT *
FROM travelers
WHERE country NOT IN ('Canada', 'Mexico', 'USA');

# 8kyu: Adults only (SQL for Beginners #1)
#In your application, there is a section for adults only. You need to get a list of names and ages of users from the users table, who are 18 years old or older.
#users table schema
#name
#age
#NOTE: Your solution should use pure SQL. 

SELECT *
FROM users
WHERE age>=18;

# 8kyu: Keep Hydrated!
#Nathan loves cycling.
# Because Nathan knows it is important to stay hydrated, he drinks 0.5 litres of water per hour of cycling.
# You get given the time in hours and you need to return the number of litres Nathan will drink, rounded to the smallest value.
# For example:
# hours = 3 ----> liters = 1
# hours = 6.7---> liters = 3
# hours = 11.8--> liters = 5
# You have to return 3 columns: id, hours and liters (not litres, it's a difference from the kata description)

SELECT id, hours, FLOOR(hours/2) AS liters
FROM cycling;

# 8kyu: SQL Grasshopper: Select Columns
#Greetings Grasshopper!# Using only SQL, write a query that returns all rows in the custid, custname, and custstate columns from the customers table.
#Table Description for customers:
#Column	Data Type	Size	Sample
#custid	integer	8	4
#custname	string	50	Anakin Skywalker
#custstate	string	50	Tatooine
#custard	string	50	R2-D2
#Your solution should contain only SQL.

SELECT custid, custname, custstate
FROM customers;

# 8kyu: SQL Basics: Simple DISTINCT
#For this challenge you need to create a simple DISTINCT statement, 
#you want to find all the unique ages.
#people table schema
#id
#name
#age
#select table schema
#age (distinct)

SELECT DISTINCT age
FROM people;

#8 kyu: SQL Basics: Simple MIN / MAX
#Collect|
#For this challenge you need to create a simple MIN / MAX statement that will 
#return the Minimum and Maximum ages out of all the people.
#people table schema
#id
#name
#age
#select table schema
#age_min (minimum of ages)
#age_max (maximum of ages)

SELECT MIN(age) AS age_min, max(age) AS age_max
FROM people;

# 8 kyu: SQL Basics: Simple SUM
#For this challenge you need to create a simple SUM statement that will sum all the ages.
#people table schema
#id
#name
#age
#select table schema
#age_sum (sum of ages)
#NOTE: Your solution should use pure SQL. Ruby is used within the test cases to do the actual testing.
#NOTE2: You need to use ALIAS for creating age_sum

SELECT SUM(age) AS age_sum
FROM people;

#8 kyu: 1. Find all active students
#Create a simple SELECT query to display student information of all ACTIVE students.
#TABLE STRUCTURE:
#students
#Id	FirstName	LastName	IsActive
#Note: IsActive (true or false)

SELECT *
FROM students
WHERE IsActive = 1;

#8 kyu: SQL Basics: Simple WHERE and ORDER BY
#For this challenge you need to create a simple SELECT statement that will return all 
#columns from the people table WHERE their age is over 50
#people table schema
#id
#name
#age
#You should return all people fields where their age is over 50 and order by the age descending

SELECT *
FROM people
WHERE age> 50
ORDER BY age DESC;

# 8 kyu: Opposite number
#Very simple, given an integer or a floating-point number, find its opposite.
#Examples:
#1: -1
#14: -14
#-34: 34
#You will be given a table: opposite, with a column: number. Return a table with a column: res.

SELECT -number AS res
FROM opposite;

