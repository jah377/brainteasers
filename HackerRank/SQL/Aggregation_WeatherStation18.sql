/*  Weather Observation Station 18
	https://www.hackerrank.com/challenges/weather-observation-station-18/problem

	Background:
	- station table --> id, city, state, lat_n, long_w
		- a = min northern lat
		- b = min west long
		- c = max northern lat
		- d = max west long

	Query:
	- Manhattan distance between P1 and P2
		- |c-a|+|d-b|
	- round to 4 decimal places
*/


	-- My Solution:
	select round( abs(max(lat_n)-min(lat_n)) + abs(max(long_w)-min(long_w)), 4 )
	from station
