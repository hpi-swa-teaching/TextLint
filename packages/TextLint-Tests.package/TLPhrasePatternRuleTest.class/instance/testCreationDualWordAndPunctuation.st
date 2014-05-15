as yet unclassified
testCreationDualWordAndPunctuation
	| aRule |
	aRule := TLPhrasePatternRule
				named: 'test'
				rationale: 'rationale'
				matching: 'test1,test2'.
	
	self assert: aRule name = 'test'.
	self assert: aRule rationale = 'rationale'.
	self assert: ( aRule pattern isKindOf: PPFlattenParser ).
	self assert: ( aRule pattern children size = 1 ).
	self assert: ( ( aRule pattern children at: 1 ) isKindOf: PPSequenceParser ).
	self assert: ( ( aRule pattern children at: 1 ) children size = 3 ).