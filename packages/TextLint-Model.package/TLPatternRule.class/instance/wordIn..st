factory
wordIn: aCollection
	^ PPPredicateObjectParser
		on: [ :element | element isWord and: [ aCollection anySatisfy: [ :each | element text sameAs: each ] ] ]
		message: 'word expected'