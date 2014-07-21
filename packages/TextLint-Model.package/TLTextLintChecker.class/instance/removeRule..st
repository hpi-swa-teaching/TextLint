accessing
removeRule: aRule
	self rules remove: aRule ifAbsent: [].
	self ignoredRules add: aRule.
	self editResultsBy: aRule.