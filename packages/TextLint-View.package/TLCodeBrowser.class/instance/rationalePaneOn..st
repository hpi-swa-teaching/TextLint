Glamour
rationalePaneOn: aBrowser

	aBrowser transmit 
		to: #rationale; 
		from: #issues; 
		andShow: [:a | a text 
							title: 'Rationale'; 
							display: [:r | 
								r isCollection
									ifTrue: [ r first rule rationale ]
									ifFalse: [ r rule rationale ] ] ].
	
	^aBrowser