factory
markup
	^ PPPredicateObjectParser
		on: [ :element | element isMarkup ]
		message: 'markup expected'