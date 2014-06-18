as yet unclassified
acceptTextInModel 
	| acceptedText |
	acceptedText := textMorph asText.
	[^setTextSelector isNil or:
		[setTextSelector numArgs = 2
			ifTrue: [model perform: setTextSelector with: acceptedText with: self]
			ifFalse: [model perform: setTextSelector with: acceptedText]]
		] ensure: [unstyledAcceptText := nil]