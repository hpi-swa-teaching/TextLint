as yet unclassified
ruleFailuresAtCaret
	^ (self text attributesAt: editor caret) select: [ :each | each class = TLAttribute] thenCollect: [:each | each ruleFailure].
