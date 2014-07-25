action
showContextMenu
	| ruleFailures menu |
	ruleFailures := self ruleFailuresAtCaret.
	ruleFailures isEmpty ifTrue: [ ^self].
	menu := MenuMorph new.
	ruleFailures do: [ :each | 
		(menu add: 'ignore all: ', each rule name 
			    target: self selector: #ignoreAll: 
			    argument: each rule) setBalloonText: each rule rationale.
		(each rule isFixable) ifTrue: [
			(menu add: 'fix to: ', (each rule suggestFixFor: each element text)
			 	   target: self selector: #quickfix: 
			  	  argument: each)]].
	menu
		title: 'Failures';
		popUpInWorld: World.
