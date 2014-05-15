accessing
matchingPattern
	^ (self word: 'require') / (self word: 'requires') , (self separators) , (self word: 'to')