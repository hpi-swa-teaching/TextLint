accessing
matchingPattern
	^  (self wordIn: #('case' 'cases')) , (self separators) , (self punctuation: '-') optional , (self separators) , (self wordIn: #('grammar' 'grammars' 'harden' 'histories' 'history' 'knife' 'knives' 'law' 'mod' 'sensitive' 'shot' 'stated' 'studies' 'study' 'system')) not