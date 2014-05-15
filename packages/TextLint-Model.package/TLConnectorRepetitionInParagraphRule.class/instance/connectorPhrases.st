accessing
connectorPhrases
	| phrases aPhrase elements |
	phrases := OrderedCollection new.
	
	elements := OrderedCollection new.
	elements add: (TLWord with: (PPToken on: 'in')).
	elements add: (TLWhitespace new).
	elements add: (TLWord with: (PPToken on: 'contrast')).
	elements add: (TLWhitespace new).
	elements add: (TLWord with: (PPToken on: 'to')).
	aPhrase := TLPhrase withAll: elements.
	phrases add: aPhrase.
	
	elements := OrderedCollection new.
	elements add: (TLWord with: (PPToken on: 'in')).
	elements add: (TLWhitespace new).
	elements add: (TLWord with: (PPToken on: 'addition')).
	aPhrase := TLPhrase withAll: elements.
	phrases add: aPhrase.
	
	elements := OrderedCollection new.
	elements add: (TLWord with: (PPToken on: 'on')).
	elements add: (TLWhitespace new).
	elements add: (TLWord with: (PPToken on: 'the')).
	elements add: (TLWhitespace new).
	elements add: (TLWord with: (PPToken on: 'other')).
	elements add: (TLWhitespace new).
	elements add: (TLWord with: (PPToken on: 'hand')).
	aPhrase := TLPhrase withAll: elements.
	phrases add: aPhrase.
	^ phrases