test
testName
	TLTextLintRule allRules do: [ :rule | 
		self assert: rule name ~= rule class name.
		self assert: rule name isString.
		self assert: rule name isEmpty not.
		self assert: rule name size < 40 ]