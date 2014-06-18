accessing
removeRule: aRule
	| editedResults |
	self rules remove: aRule ifAbsent: [].
	editedResults := OrderedCollection new.	
	self results do: [:each | (each rule name = aRule name) 
							ifFalse: [editedResults add: each]].
	results := editedResults asArray.