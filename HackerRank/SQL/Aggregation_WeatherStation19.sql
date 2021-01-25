/*  Weather Observation Station 19
	https://www.hackerrank.com/challenges/weather-observation-station-19/problem

	Background:
	- station table --> id, city, state, lat_n, long_w
		- a = min northern lat
		- b = min west long
		- c = max northern lat
		- d = max west long

	Query:
	- Euclidean distance between P1 and P2
		- sqrt( (c-a)^2+(d-b)^2 )
	- round to 4 decimal places
*/


	-- My Solution:
	select round( sqrt( pow(max(lat_n)-min(lat_n),2) + 
                    	pow(max(long_w)-min(long_w),2) ), 4)
	from station
