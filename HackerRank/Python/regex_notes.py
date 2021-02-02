## Regex Notes

# Functions
re.search(r'pattern',str)  # check if pattern present, return match obj
	# Example: 
		re.search(r'is',                     # pattern
				  'This is a sample string', # input string
				  flags=re.I)                # ignore case
		Output = <re.Match object; span=(2, 4), match='is'>	

re.findall(r'pattern',str) # return list of string matching pattern
	# Example: 
		re.findall(r'is',                     # pattern
				   'This is a sample string', # input string
				   flags=re.I)                # ignore case
		Output = ['is','is']


# Anchors
r'\Apattern'   # restricts match to start of STRING
r'pattern\Z'   # restricts match to end of STRING
r'^pattern'    # restricts match to start of LINE
r'pattern$'    # restricts match to end of LINE
r'\bpattern\b' # restricts match to start/end of words


# Character Class
r'\s' # match whitespace chars [\ \t\n\r\f\v]
r'\S' # match non-whitespacer chars

r'\d' # match digits [0-9]
r'\D' # match non-digits [^0-9] or [^\d]

r'\w' # match word chars [0-9a-zA-Z_]
r'\W' # match non-word chars