accessing
matchingPattern
	^ (self anchorBegin) , (self word: 'there') ,  (self separators) , ( (self word: 'is') / (self word: 'are') )