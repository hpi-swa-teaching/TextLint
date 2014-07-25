accessing
ignoreRule: aRule
	self removeRule: aRule.
	self ignoredRules add: aRule.
	self editResultsBy: aRule.