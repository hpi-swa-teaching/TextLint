factory
punctuationIn: aCollection
	^ PPPredicateObjectParser
		on: [ :element | element isPunctuation and: [ aCollection anySatisfy: [ :each | element text sameAs: each ] ] ]
		message: 'punctuation expected'