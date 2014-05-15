testing
isEndOfSentence
	^ '.:;!?' includes: (token collection at: token start)