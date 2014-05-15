test
testInterval

	| aParagraph words aSentence sentences |

	words := OrderedCollection new.
	aSentence := TLSentence withAll: words.	
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	self assert: aParagraph interval size = 0