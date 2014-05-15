tests
testSentence
	self assert: '{verb}' recognizes: 'TextLint works perfectly'.
	self assert: '{adverb}' recognizes: 'TextLint works perfectly'.
	self assert: '{verb} {adverb}' recognizes: 'TextLint works perfectly'.
	self deny: '{adverb} {verb}' recognizes: 'TextLint works perfectly'.
	