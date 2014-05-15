as yet unclassified
testFailureInSentence
	| aRule aWord aDocument anotherWord aSentence aParagraph results |
	self createWord: 'test'.
	aWord := self createWord: 'enormity'.
	self createWord: 'truth'.
	self createWord: 'is'.
	self createWord: 'test'.
	self createSentence.
	self createParagraph.
	results := self assertProblem.
	self assert: results size = 1.
	self assert: results first element isPhrase.
	self assert: results first element words size = 1.
	self assert: results first element words first = aWord.