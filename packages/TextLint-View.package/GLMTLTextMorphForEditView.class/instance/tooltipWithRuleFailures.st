Glamour
tooltipWithRuleFailures
	| balloon ruleFailures |
	ruleFailures := (self text attributesAt: editor caret) select: [ :each | each class = TLAttribute] thenCollect: [:each | each ruleFailure].
	ruleFailures isEmpty ifTrue: [ ^self ].
	balloon := TLTooltip new.
	ruleFailures do: [ :each |
		balloon contents: balloon contents, each rule name.
		ruleFailures last = each ifFalse: [balloon contents: balloon contents, '; '.]. 
	].	
	balloon openInWorld.