Glamour
rationalePaneOn: aBrowser

	aBrowser transmit 
		to: #rationale; 
		from: #issues; 
		andShow: [:a | a text 
							title: 'Rationale'; 
							display: [:r | 
								r isCollection
									ifTrue: [ r first isCollection
												ifTrue: [r first first rule class categoryDescriptions 
																at: r first first rule category]
												ifFalse: [r first rule rationale ]]
									ifFalse: [ r rule rationale ] ] ].
	
	^aBrowser