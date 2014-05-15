accessing
matchingPattern
	| firstWord |
	^ (self wordSatisfying: [ :word | (firstWord := word) classifiesAs: #adverb ]) ,
	   (self separators) , 
	   (self wordSatisfying: [ :word | (TLThesaurus synonymsOf: firstWord text) includes: word text ])


