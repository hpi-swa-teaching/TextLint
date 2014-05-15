grammar
sentenceTerminator
	^ PPPredicateObjectParser 
		on: [ :token | token isPunctuation and: [ token isEndOfSentence ] ] 
		message: 'End of sentence expected'