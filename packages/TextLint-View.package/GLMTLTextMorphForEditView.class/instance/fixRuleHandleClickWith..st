as yet unclassified
fixRuleHandleClickWith: aRuleFailure
	| frs  ruleText pos | 
	ruleText :=aRuleFailure element text.
	pos := editor caret - (aRuleFailure element stop - aRuleFailure element start).
	editor selectFrom: pos to: pos - 1.
	frs := FindReplaceService new.
	frs findText: ruleText.
	frs replaceText:'cannot'.
	frs isRegex:true.
	frs replaceInTextMorph: self.
	
	self browser recheckWithText: self text asString.