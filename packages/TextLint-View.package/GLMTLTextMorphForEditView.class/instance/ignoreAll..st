action
ignoreAll: aRule
	self browser textLintChecker removeRule: aRule.
	self browser textToCheck: self text asString.
	self browser saveAnnouncer announce: TLFileSaved.