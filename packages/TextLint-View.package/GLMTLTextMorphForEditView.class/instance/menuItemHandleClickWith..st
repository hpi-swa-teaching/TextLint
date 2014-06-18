as yet unclassified
menuItemHandleClickWith: aRule
	self browser textLintChecker removeRule: aRule.
	self browser recheckWithText: self text asString.