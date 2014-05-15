mocking
checkWord: aWord 
	| results |
	results := OrderedCollection new.
	rules do: [:each | results addAll: (each runOnWord: aWord)].
	^results

