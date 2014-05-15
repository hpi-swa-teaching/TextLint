test
testClassifyAsWithCertainty
	| word |
	word := TLWord with: (PPToken on: 'its') .
	self assert: (word classifiesAs: #adjective withCertainty: 0.4).
	self deny: (word classifiesAs: #adjective withCertainty: 0.6).
	self assert: (word classifiesAs: #pronoun withCertainty: 0.4).
	self deny: (word classifiesAs: #pronoun withCertainty: 0.6).
	self deny: (word classifiesAs: #number withCertainty: 0.4).
	self deny: (word classifiesAs: #number withCertainty: 0.6)