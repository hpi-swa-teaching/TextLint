token
punctuation
	^ super punctuation ==> [ :token | 
		PPPredicateObjectParser
			on: [ :each | each isPunctuation and: [ each text = token value ] ]
			message: token value printString , ' expected' ]