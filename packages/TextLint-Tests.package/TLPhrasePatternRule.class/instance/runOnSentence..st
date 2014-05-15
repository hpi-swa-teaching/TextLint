running
runOnSentence: aSentence 
	^ (self pattern matchesIn: aSentence children)
		collect: [ :each | TLRuleFailure on: self at: (TLPhrase withAll: each) ]