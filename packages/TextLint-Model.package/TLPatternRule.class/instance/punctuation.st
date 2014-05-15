factory
punctuation
	^ PPPredicateObjectParser 
		on: [ :element | element isPunctuation ]
		message: 'punctuation expected'