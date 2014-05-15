running
matchingPattern
	| aWord |
	^ (self wordTextSatisfying: [ :value | aWord := value. value isAllDigits not ]) , 
	   (self wordTextSatisfying: [ :value | aWord sameAs: value]) 