public
parse: aString tokenizer: aTokenizer
	document := TLTextPhraser parse: (aTokenizer parse: aString)