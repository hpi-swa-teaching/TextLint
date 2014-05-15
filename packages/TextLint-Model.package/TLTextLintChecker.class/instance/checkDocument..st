mocking
checkDocument: aDocument 
	|results |
	results := OrderedCollection new.
	rules do: [:each | results addAll: (each runOnDocument: aDocument)].
	^results

