factory
whitespace
	^ PPPredicateObjectParser
		on: [ :element | element isWhitespace ]
		message: 'whitespace expected'