public
parse: aString
	self parse: aString tokenizer: (TLPlainTokenizer find: aString)