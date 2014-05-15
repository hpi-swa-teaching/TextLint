token
word
	^ super word ==> [ :token | 
		PPPredicateObjectParser
			on: [ :each | each isWord and: [ each text sameAs: token value ] ]
			message: token value printString , ' expected' ]