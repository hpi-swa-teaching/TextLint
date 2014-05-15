mocking
checkParagraph: aParagraph 
	| results |
	results := OrderedCollection new.
	rules do: [:each | results addAll: (each runOnParagraph: aParagraph)].
	^results

