accessing
categorieDescriptions
	| dictionary |
	dictionary := Dictionary new.
	dictionary
		at: #grammar put: 'Grammar mistakes you may have made';
		at: #repetition put: 'Do not use the same words multiple times';
		at: #wordsToAvoid put: 'Words and phrases you should avoid';
		at: #sentenceConstruction put: 'Sentence constructions you should think about again'.
	^ dictionary