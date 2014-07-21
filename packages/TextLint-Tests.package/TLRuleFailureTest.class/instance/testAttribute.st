test
testAttribute

	| aFailure aSentence words sentences aParagraph aText aRule |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'can')).
	words add: (TLWord with: (PPToken on: 'not')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	
	aRule := TLCannotRule new.
	aFailure := TLRuleFailure on: aRule at: aParagraph.
	aText := 'can not' asText.
	self assert: aFailure rule notNil.
	aText addAttribute: aFailure highlightAttribute from: 1 to: 7.
	self assert: aText runs first third class = TLAttribute.
	self assert: aText runs first third ruleFailure == aFailure.
	self assert: (aText runs first third color = (TLTextLintRule categoryColors at: aFailure rule category) color).
	