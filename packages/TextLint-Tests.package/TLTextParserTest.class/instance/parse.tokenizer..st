utilities
parse: aString tokenizer: aClass
	| document |
	document := TLTextPhraser
		parse: (aClass parse: aString)
		onError: [ :err | self error: err printString ].
	self
		assert: document text = aString
		description: 'Parse invariant not satisfied'.
	self
		assert: (document printString includesSubString: aString)
		description: 'Document print string should include its contents'.
	self 
		assert: (aString copyFrom: document start to: document stop) = aString
		description: 'Invalid start/stop of document'.
	document paragraphs do: [ :each |
		self 
			assert: (aString copyFrom: each start to: each stop) = each text
			description: 'Invalid start/stop of paragraph' ].
	document sentences do: [ :each |
		self 
			assert: (aString copyFrom: each start to: each stop) = each text
			description: 'Invalid start/stop of sentence' ].
	document words do: [ :each |
		self 
			assert: (aString copyFrom: each start to: each stop) = each text
			description: 'Invalid start/stop of word' ].
	^ document