accessing
matchingPattern
	^ (self wordSatisfying: [ :word | word classifiesAs: #adjective ]) ,
	   (self whitespace) ,
	   (self wordSatisfying: [ :word | word classifiesAs: #adjective ])
	
