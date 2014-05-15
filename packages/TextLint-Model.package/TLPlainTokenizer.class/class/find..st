finding
find: aString
	"Finds an appropriate tokenizer for aString."
	
	^ (self allSubclasses
		detect: [ :class | class canTokenize: aString ]
		ifNone: [ self ])
			new