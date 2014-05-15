test
testRationale
	TLTextLintRule allRules do: [ :rule | 
		self assert: rule rationale ~= rule name.
		self assert: rule rationale isString.
		self assert: rule rationale isEmpty not.
		self assert: rule rationale last = $..
		self assert: rule rationale size < 160 ]