test
testEmptyInterval

	| aDocument words aSentence aParagraph sentences paragraphs|
	
	words := OrderedCollection new.
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	
	aDocument := TLDocument withAll: paragraphs.
	self assert: aDocument interval size = 0