accessing
editResultsBy: aRule
	| editedResults |
	editedResults := OrderedCollection new. 
	self results do: [ :each | (each rule name = aRule name) 
		ifFalse: [editedResults add: each]].
	results := editedResults asArray.