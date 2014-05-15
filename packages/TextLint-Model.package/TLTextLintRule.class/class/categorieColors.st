accessing
categorieColors
	| dictionary |
	dictionary := Dictionary new.
	dictionary
		at: #grammar put: TextColor magenta;
		at: #repetition put: TextColor blue;
		at: #wordsToAvoid put: TextColor red;
		at: #sentenceConstruction put: (TextColor color: Color orange).
	^ dictionary