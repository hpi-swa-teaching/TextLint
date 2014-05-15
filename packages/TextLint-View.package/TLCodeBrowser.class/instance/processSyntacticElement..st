element printing
processSyntacticElement: aSyntacticElement
	
	^String streamContents: [ :stream |
								stream nextPutAll: aSyntacticElement text withBlanksTrimmed.
								stream nextPutAll: ' (line '; print: aSyntacticElement token line; nextPut: $) ]
	