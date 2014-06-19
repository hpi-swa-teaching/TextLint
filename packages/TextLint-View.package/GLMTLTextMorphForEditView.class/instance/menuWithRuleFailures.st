as yet unclassified
menuWithRuleFailures
	| ruleFailures menu |
	ruleFailures := self browser ruleFailuresAt: editor caret.
	ruleFailures isEmpty ifTrue: [ ^self ].
	menu := MenuMorph new.
	menu
		title: 'Failures';
		addStayUpItem.
	ruleFailures do: [ :each | (menu add: ('Ignore all: ', each rule name) target: (self browser textLintChecker) selector: #removeRule: argument: each rule) setBalloonText: each rule rationale.].
	menu popUpInWorld: World.