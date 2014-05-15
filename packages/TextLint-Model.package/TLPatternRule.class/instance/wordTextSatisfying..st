factory
wordTextSatisfying: aBlock
	^ PPPredicateObjectParser
		on: [ :element | element isWord and: [ aBlock value: element text ] ]
		message: 'word expected'