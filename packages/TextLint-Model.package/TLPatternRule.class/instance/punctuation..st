factory
punctuation: aString
	^ PPPredicateObjectParser
		on: [ :element | element isPunctuation and: [ element text = aString ] ]
		message: 'punctuation expected'