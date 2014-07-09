as yet unclassified
showContextMenu
	| ruleFailures menu |
	ruleFailures := self ruleFailuresAtCaret.
	ruleFailures isEmpty ifTrue: [ ^self].
	menu := MenuMorph new.
	ruleFailures do: [ :each | 
		(menu add: 'ignore all: ', each rule name 
			    target: self selector: #menuItemHandleClickWith: 
			    argument: each rule) setBalloonText: each rule rationale.].
	menu
		title: 'Failures';
		popUpInWorld: World.