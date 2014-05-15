test
testClassifyAs1
	| word |
	word := TLWord with: (PPToken on: 'excess').
	self assert: (word classifiesAs: #noun).
	self deny: (word classifiesAs: #pronoun)