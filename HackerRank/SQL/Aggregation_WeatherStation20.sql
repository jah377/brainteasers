/*  Weather Observation Station 20
	https://www.hackerrank.com/challenges/weather-observation-station-20/problem

	Background:
	- station table --> id, city, state, lat_n, long_w


	Query:
	- median of Lat_N
	- round to 4 decimal places
*/


	-- My Solution:
		-- Sort lat_n and identify middle value
		-- [1,3,3,  6,  7,8,9] = 6
		-- [1,2,3,  4,5,  6,7,8] = avg(4+5) = 4.5

	set @idx := -1; -- must create idx col to find middle value

	select round( avg(a.lat_n), 4 ) as median -- 
	from 
		(select @idx:=@idx+1 as idx, lat_n -- returns row number and lat_n
	     from station
	     order by lat_n) as a              -- must have alias for table
	where a.idx in (floor(@idx/2),         -- ex: [floor(idx/2), ceil(idx/2)] = [4,5]
					ceil(@idx/2) );
