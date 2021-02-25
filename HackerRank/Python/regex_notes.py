## Regex Notes

# Functions
re.search(r'pattern',str)  # check if pattern present, return match obj
	# Example: 
		re.search(r'is',                     # pattern
				  'This is a sample string', # input string
				  flags=re.I)                # ignore case
		Output = <re.Match object; span=(2, 4), match='is'>	
	output.start() # start index
	output.end()   # end index

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



# Create Groups
r'(pattern)' 	# define group looking to match
	# () Example
			pattern = '(\d+|\w+)' # find words or numbers
			re.findall(pattern, 'He has 11 cats')
			# output = ['He', 'has', '11', 'cats']
r'[abc]' # match ONLY ONE out of characters within square brackets
	#Ex: '^[1-3][0-2][xs0][30Aa][xsu][.,]'
		# i=0: 1,2, or 3
		# i=1: 0,1, or 2
		# i=2: x, s, or 0
		# etc...
r'[^abc]' # match if chars NOT within square brackets
r'pattern{x}' # match if pattern exactly x repetitions




	