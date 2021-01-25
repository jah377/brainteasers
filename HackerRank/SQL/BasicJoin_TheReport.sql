/*  The Report
	https://www.hackerrank.com/challenges/the-report/problem

	Background:
	- students table --> id, name, marks
	- grades table --> grade, min_mark, max_mark


	Query:
	- Name, Marks, and Grade
	- If grade <8, return NULL instead of name
	- Order by grade, name
*/


/*  My Solution
	- Traditional join
		select a.A, b.B
		from table A as a
		inner join tabe B as b
		on a.key = b.key           -- join tables if column values match
	- Join students and grades tables by BETWEEN condition
		- Ex: students.marks = 88
			- Return grades.grade = 9 since 88 between grades.min=80 and grades.max=89
	- Use CASE WHEN to remove names if grade < 8
		- **Alternatively, I could have used if-else statement**
*/

	select 
	    case 
	        when g.grade >= 8 then s.name        -- if grade >=8, return name
	        else NULL                            -- if grade < 8, return NULL
	    end, 
	    g.grade,
	    s.marks
	from students as s
	inner join grades as g
	on s.marks between g.min_mark and g.max_mark -- join by BETWEEN condition
	order by g.grade desc, s.name asc

	-- Alternative Solution
		-- Use if-else statement if(condition, return x, else y) instead of case-when since there is only one condition
	select if(g.grade<8, NULL, s.name), g.grade, s.marks
	from students as s
	inner join grades as g
	on s.marks between g.min_mark and g.max_mark -- join by BETWEEN condition
	order by g.grade desc, s.name asc

