helpers
createSentence
	|sentence|
	sentence := sentences add: (TLSentence withAll: words).
	words := OrderedCollection new.
	^ sentence