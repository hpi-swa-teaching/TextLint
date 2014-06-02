as yet unclassified
doubleClick: anEvent
	| ruleFailures menu |
	super doubleClick: anEvent.
	ruleFailures := self browser ruleFailuresIn: self selectionInterval.
	ruleFailures isEmpty not ifTrue: [
		menu := MenuMorph new.
		menu
			title: 'Failures';
			addStayUpItem.
		ruleFailures do: [ :each | (menu add: ('    ', each rule name, '    ') target: self selector: #something) setBalloonText: each rule rationale.].
		menu popUpInWorld: World.		
	].