factory
word: aString
	^ PPPredicateObjectParser
		on: [ :element | element isWord and: [ element text sameAs: aString ] ]
		message: 'word expected'