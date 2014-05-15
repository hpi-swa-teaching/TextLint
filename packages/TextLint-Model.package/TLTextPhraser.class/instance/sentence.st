accessing
sentence
	^ super sentence ==> [ :nodes |
		TLSentence withAll: (nodes last isNil
			ifFalse: [ nodes first copyWith: nodes last ]
			ifTrue: [ nodes first ]) ]