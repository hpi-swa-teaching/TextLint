test
testClassifyAs2
	| word |
	word := TLWord with: (PPToken on: 'its').	
	self deny: (word classifiesAs: #adjective).
	self deny: (word classifiesAs: #pronoun).
	self deny: (word classifiesAs: #number)