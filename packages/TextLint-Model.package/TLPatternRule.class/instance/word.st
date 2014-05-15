factory
word
	^ PPPredicateObjectParser
		on: [ :element | element isWord ]
		message: 'word expected'