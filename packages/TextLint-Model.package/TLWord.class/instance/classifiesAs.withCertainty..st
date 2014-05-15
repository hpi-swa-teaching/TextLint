testing
classifiesAs: aSymbol withCertainty: aFloat
	"Answer if the receiving word classifies as aSymbol with a certainty of aFloat (0.0 - 1.0)."
	
	| classifications |
	classifications := self classification.
	(classifications includes: aSymbol)
		ifFalse: [ ^ false ].
	(classifications size = 1)
		ifTrue: [ ^ true  ].
	^ 1.0 / classifications size >= aFloat