token
whitespace
	^ super whitespace ==> [ :token | 
		(PPPredicateObjectParser
			on: [ :each | each isWhitespace or: [ each isMarkup ] ]
			message: 'whitespace expected') star ]