test
testCategories
	
	| categories |
	
	categories := Bag new. 
	TLTextLintRule allRules do: [:each | categories add: each category].
	categories := categories asSet.
	
	self assert: (categories size = 4).
	self assert: (categories = #(#wordsToAvoid #grammar #sentenceConstruction #repetition) asSet).