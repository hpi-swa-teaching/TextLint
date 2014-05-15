factory
punctuationSatisfying: aBlock
	^ PPPredicateObjectParser
		on: [ :element | element isPunctuation and: [ aBlock value: element text ] ]
		message: 'punctuation expected'