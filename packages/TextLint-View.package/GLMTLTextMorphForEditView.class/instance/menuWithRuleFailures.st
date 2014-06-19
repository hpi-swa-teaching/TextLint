as yet unclassified
menuWithRuleFailures
	| ruleFailures menu |
	ruleFailures := self browser ruleFailuresAt: editor caret.
	ruleFailures isEmpty not ifTrue: [
		menu := MenuMorph new.
		menu
			title: 'Failures';
			addStayUpItem.
		ruleFailures do: [ :each | (menu add: ('ignore all: ', each rule name, '    ') target: (self) selector: #menuItemHandleClickWith: argument: each rule) setBalloonText: each rule rationale.].
		menu 
			popUpInWorld: World.
	]