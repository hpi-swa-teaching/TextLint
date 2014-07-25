private
ruleFailuresAtCaret
	^ (self text attributesAt: editor caret) select: [ :each | each isKindOf: TLAttribute] thenCollect: [:each | each ruleFailure].
