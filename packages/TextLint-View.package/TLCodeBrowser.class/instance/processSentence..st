element printing
processSentence: aSentence
	
	^String streamContents: [ :stream |
								stream nextPutAll: ' ('; print: aSentence words size; nextPutAll: ' words) '.
								stream nextPutAll: aSentence text withBlanksTrimmed.
								stream position > 20
									ifTrue: [ stream position: 40; nextPutAll: '...' ].
								stream nextPutAll: ' (line '; print: aSentence token line; nextPut: $) ]
