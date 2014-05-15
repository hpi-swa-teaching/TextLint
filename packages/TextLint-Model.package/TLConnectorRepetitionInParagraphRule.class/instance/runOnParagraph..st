running
runOnParagraph: aParagraph
	| results failures |
	results := OrderedCollection new.
	self checkWordsIn: aParagraph addingFailuresTo: results.
	self checkPhrasesIn: aParagraph addingFailuresTo: results.
	failures := OrderedCollection new.
	results do: [:each | failures add: (TLRuleFailure on: self at: each) ].
	^ failures