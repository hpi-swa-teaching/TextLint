grammar
documentTerminator
	^ PPPredicateObjectParser 
		on: [ :token | token isEndOfDocument ] 
		message: 'End of document expected'