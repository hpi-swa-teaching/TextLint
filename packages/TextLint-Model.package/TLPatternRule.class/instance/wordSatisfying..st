factory
wordSatisfying: aBlock
	^ PPPredicateObjectParser
		on: [ :element | element isWord and: [ aBlock value: element ] ]
		message: 'word expected'