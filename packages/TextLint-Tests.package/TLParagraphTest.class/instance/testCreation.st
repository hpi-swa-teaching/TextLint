test
testCreation

	| aParagraph |

	aParagraph := TLParagraph withAll: (OrderedCollection with: (TLWord with: 2)).
	self assert: aParagraph sentences size = 1.
	self assert: aParagraph sentences first text = 2