element printing
processParagraph: aParagraph
	
	^String streamContents: [ :stream |
								stream nextPutAll: ' ('; print: aParagraph sentences size; nextPutAll: ' sentences) '.
								stream nextPutAll: aParagraph text withBlanksTrimmed.
								stream position > 20
									ifTrue: [ stream position: 40; nextPutAll: '...' ].
								stream nextPutAll: ' (line '; print: aParagraph token line; nextPut: $) ]
