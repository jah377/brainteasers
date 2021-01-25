/*  Binary Tree Node Question 
	https://www.hackerrank.com/challenges/binary-search-tree-1/problem

	Background
	- BST table contains N (node value) and P (parent value)
	- Query to find node type of the value within the binary Tree, ordered by node value
		- Root = if p val is null
		- Inner = if n val also found in p column (and not a root)
		- Leaf = all other node values
	*/

	-- My Answer
	SELECT n,      -- must add comma for case-when output
	CASE 
    	WHEN p IS NULL THEN 'Root'                 -- order of operation --> acts as if, else-if, else
    	WHEN n IN (SELECT p FROM bst) THEN 'Inner' -- if not a root, nodes in p column can only be inner
    	ELSE 'Leaf'                                -- all other nodes must be leaves
	END
	FROM bst
	ORDER BY n     -- default = ASC