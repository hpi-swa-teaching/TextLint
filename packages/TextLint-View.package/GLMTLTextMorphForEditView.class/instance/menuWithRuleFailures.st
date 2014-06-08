as yet unclassified
menuWithRuleFailures
	| ruleFailures menu |
	ruleFailures := self browser ruleFailuresAt: editor caret.
	ruleFailures isEmpty not ifTrue: [
		menu := MenuMorph new.
		menu
			title: 'Failures';
			addStayUpItem.
		ruleFailures do: [ :each | (menu add: ('    ', each rule name, '    ') target: menu selector: #delete) setBalloonText: each rule rationale.].
		menu 
			popUpInWorld: World.
	]