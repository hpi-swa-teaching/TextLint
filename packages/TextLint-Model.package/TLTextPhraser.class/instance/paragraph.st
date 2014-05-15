accessing
paragraph
	^ super paragraph ==> [ :nodes |
		TLParagraph withAll: (nodes last isNil
			ifFalse: [ nodes first copyWith: nodes last ]
			ifTrue: [ nodes first ]) ]