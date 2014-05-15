test
testClassifyAs0
	| word |
	word := TLWord with: (PPToken on: 'n00b').
	self deny: (word classifiesAs: #noun).
	self deny: (word classifiesAs: #pronoun)