testing
canTokenize: aString
	^ #('\documentclass' '\usepackage' '\section' '\begin{') anySatisfy: [ :each | aString includesSubstring: each caseSensitive: false ]