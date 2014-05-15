initialization
initializeNamed: aName rationale: aRationale matching: aString 
	pattern := TLPatternTokenizer parse: aString.
	name := aName.
	rationale := aRationale