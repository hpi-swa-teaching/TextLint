action
quickfix: aRuleFailure
	| frs  ruleText pos | 
	ruleText :=aRuleFailure element text.
	pos := editor caret.
	editor selectFrom: aRuleFailure element start to: aRuleFailure element start - 1.
	frs := FindReplaceService new.
	frs 
		findText: ruleText;
	      replaceText: (aRuleFailure rule suggestFixFor: ruleText);
		isRegex:true;
		replaceInTextMorph: self.
	editor selectFrom: pos to: pos - 1.