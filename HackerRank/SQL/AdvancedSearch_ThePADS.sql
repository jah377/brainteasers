/*  The PADS Question 
	https://www.hackerrank.com/challenges/the-pads/problem

	Background
	- occupations table: name, occupation
	- Query:
		1. List of all names in occupations
			- ordered alphabetically by name
			- Ex: Ashely(P)
		2. Number of occurences of each occupation
			- ordered by number, and occupation
			- Ex: There are a total of 2 doctors.
*/


	-- My Solution:
		-- Uses concat to return formatted string
		select concat(name, 
						'(', 
						left(occupation,1),
						')') -- Ashely(P)
		from occupations
		order by name; -- default ascending

		-- Use group by and concat to return formatted count of occupations
		select concat('There are a total of ', 
						count(occupation),
						' ', 
						lower(occupation), 
						's.') -- 'There are a total of 3 doctors.'
		from occupations
		group by occupation
		order by count(occupation), occupation; -- default ascending


	-- Alternative Solution:
		-- substring(occupation,1,1) --> returns characters between i=1 and i=1 (so 1st character)
		select concat(name,
						'(', 
						substring(occupation, 1, 1),
						')') 
		from occupations 
		order by name asc;

		-- cast(x as char) --> converts number to char
		select concat("There are total ",
						cast(count(*) as char), 
						" ", 
						lower(occupation), 
						"s.") 
		from occupations 
		group by occupation 
		order by count(*) asc;
