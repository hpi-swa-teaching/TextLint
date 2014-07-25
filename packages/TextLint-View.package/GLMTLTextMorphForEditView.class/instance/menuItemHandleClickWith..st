as yet unclassified
menuItemHandleClickWith: aRule
	self browser textLintChecker ignoreRule: aRule.
	self browser recheckWithText: self text asString.