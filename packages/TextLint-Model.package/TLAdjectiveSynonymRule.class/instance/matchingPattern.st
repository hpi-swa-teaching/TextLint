accessing
matchingPattern
	| firstWord |
	^ (self wordSatisfying: [ :word | (firstWord := word) classifiesAs: #adjective ]) ,
	   (self separators) , 
	   (self wordSatisfying: [ :word | (TLThesaurus synonymsOf: firstWord text) includes: word text ])


