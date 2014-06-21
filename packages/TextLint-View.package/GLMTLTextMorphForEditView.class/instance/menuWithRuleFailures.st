as yet unclassified
menuWithRuleFailures
	| ruleFailures menu |
	ruleFailures := (self text attributesAt: editor caret) select: [ :each | each class = TLAttribute] thenCollect: [:each | each ruleFailure].
	ruleFailures isEmpty not ifTrue: [
		menu := MenuMorph new.
		menu
			title: 'Failures';
			addStayUpItem.
		ruleFailures do: [ :each | (menu add: ('ignore all: ', each rule name, '    ') target: (self) selector: #menuItemHandleClickWith: argument: each rule) setBalloonText: each rule rationale.].
		menu 
			popUpInWorld: World.
	]