accessing
reactivateRule: aRule
	self addRule: aRule.
	self ignoredRules remove: aRule ifAbsent: [].