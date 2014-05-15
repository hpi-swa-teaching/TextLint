instance creation
registerInWorldMenu
	self environment at: #TheWorldMenu ifPresent: [ :class |
		 ((class respondsTo: #registerOpenCommand:)
			and: [((class class >>#registerOpenCommand:) sendsSelector: #deprecated:) not])
 	     			ifTrue: [class registerOpenCommand: { 'textLint' . {self. #open}}]]
