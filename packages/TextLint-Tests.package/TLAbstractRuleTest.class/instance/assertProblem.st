asserting
assertProblem
	|results|
	self createDocument.
	results := self runRule.
	self deny: results isEmpty.
	results do: [:r | self assert: r isRuleFailure].
	^ results