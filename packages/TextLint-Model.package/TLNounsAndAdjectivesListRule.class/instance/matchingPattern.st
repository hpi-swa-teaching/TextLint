accessing
matchingPattern
	| classification |
	^ (self wordSatisfying: [ :word |
		classification := (word classifiesAs: #adjective) 
			ifTrue: [ #adjective ]
			ifFalse: [ 
				(word classifiesAs: #noun)
					ifTrue: [ classification := #noun ]
					ifFalse: [ nil ] ].
		classification notNil ]) ,
	   (self separators) , 
	   (self wordSatisfying: [ :word | word classifiesAs: classification ]) ,
	   (self separators) , 
	   (self wordTextSatisfying: [ :value | value = 'and' or: [ value = 'or' ] ]) ,
	   (self separators) , 
	   (self wordSatisfying: [ :word | word classifiesAs: classification ])