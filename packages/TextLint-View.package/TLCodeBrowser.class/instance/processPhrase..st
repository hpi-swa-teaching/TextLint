element printing
processPhrase: aPhrase
	^String streamContents: [ :stream |
								stream nextPutAll: aPhrase text withBlanksTrimmed.
								stream nextPutAll: ' (line '; print: aPhrase token line; nextPut: $) ]
	