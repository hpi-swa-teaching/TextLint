helpers
createWord: aString
	^ words add: (TLWord with: (PPToken on: aString))