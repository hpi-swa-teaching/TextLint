grammar
paragraphTerminator
	^ PPPredicateObjectParser 
		on: [ :token | token isWhitespace and: [ token isEndOfParagraph ] ] 
		message: 'End of paragraph expected'