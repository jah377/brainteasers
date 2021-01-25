/*  New Companies Question 
	https://www.hackerrank.com/challenges/the-company/problem

	Background
	- Corp strucutre: Founder -Lead Manager-Senior Manager-Manager-Employee
	- Tables include: company, lead_manager, senior_manager, manager, employee
	- Query:
		- company_code
		- founder name
		- total number of lead managers
		- total number of senior managers
		- total number of employees
		- Order by ascending company_code
	- Note: Duplicates may occur in tables
	*/


	-- My Solution
		-- Uses JOIN method --> employee table has all info but founder name
	select c.company_code, 
		   c.founder,
		   count(distinct e.lead_manager_code),
		   count(distinct e.senior_manager_code),
		   count(distinct e.manager_code),
		   count(distinct e.employee_code)
	from company as c
	inner join employee as e
	on c.company_code = e.company_code
	group by c.company_code, c.founder      -- Must aggregate founder name else return error
	order by c.company_code;



	-- Alternative Solution
		-- Selects data from multiple tables at same time
		-- Multiple AND conditions across tables functions as JOIN statement

	select c.company_code, 
		   c.founder, 
		   count(distinct l.lead_manager_code), 
		   count(distinct s.senior_manager_code), 
		   count(distinct m.manager_code),
		   count(distinct e.employee_code) 
	from Company as c,                              -- able to pull from multiple tables at same time
		 Lead_Manager as l, 
		 Senior_Manager as s, 
		 Manager as m, 
		 Employee as e 
	where c.company_code = l.company_code          -- where conditions functions as JOIN statement
    	and l.lead_manager_code = s.lead_manager_code 
    	and s.senior_manager_code = m.senior_manager_code 
    	and m.manager_code = e.manager_code 
	group by c.company_code 
	order by c.company_code;
