testing
canTokenize: aString
	^ #('<?xml' '<html' '<body') anySatisfy: [ :each | aString includesSubstring: each caseSensitive: false ]