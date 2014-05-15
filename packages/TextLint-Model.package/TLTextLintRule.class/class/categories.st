accessing
categories
	| dictionary |
	dictionary := Dictionary new.
	dictionary
		at: 'Grammar mistakes you may have made' put: TextColor magenta;
		at: 'Do not use the same words multiple times' put: TextColor blue;
		at: 'Words and phrases you should avoid' put: TextColor red;
		at: 'Sentence constructions you should think about again' put: (TextColor color: Color orange).
	^ dictionary