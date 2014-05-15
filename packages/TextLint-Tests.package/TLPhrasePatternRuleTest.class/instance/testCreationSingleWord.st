as yet unclassified
testCreationSingleWord
	| aRule |
	aRule := TLPhrasePatternRule 
				named: 'named' 
				rationale: 'rationale'
				matching: 'test'.
	
	self deny: aRule pattern isNil.