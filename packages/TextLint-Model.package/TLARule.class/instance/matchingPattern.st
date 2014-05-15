accessing
matchingPattern
	^ (self word: 'a') , (self separators) , (self wordIn: self exceptions) not , (self wordTextSatisfying: [ :value | value first isVowel ])