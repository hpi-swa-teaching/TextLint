testing
classifiesAs: aSymbol
	"Answer if the receiving word classifies with a certainty of 1.0."
	
	| classifications |
	classifications := self classification.
	^ classifications size = 1 and: [ classifications first = aSymbol ]