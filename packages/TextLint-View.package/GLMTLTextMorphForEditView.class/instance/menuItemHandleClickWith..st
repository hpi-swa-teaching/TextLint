as yet unclassified
menuItemHandleClickWith: aRule
	self browser textLintChecker ignoreRule: aRule.
	self browser textToCheck: self text asString.
	self browser saveAnnouncer announce: TLFileSaved.