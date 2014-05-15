token
punctuationCharacters
	"Remove the open and close curly-braces."
	
	^ PPPredicateObjectParser chars: '''"[]():,-!.?;/&@' message: 'Punctuation expected'