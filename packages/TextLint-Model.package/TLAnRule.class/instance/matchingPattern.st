accessing
matchingPattern
	^ (self word: 'an') , (self separators) , (self wordIn: self exceptions) not , (self wordTextSatisfying: [ :value | value first isVowel not ])