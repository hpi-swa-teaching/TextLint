test
testEmptyInterval

	| aPhrase words|
	
	words := OrderedCollection new.
	aPhrase := TLPhrase withAll: words.
	self assert: aPhrase interval size = 0