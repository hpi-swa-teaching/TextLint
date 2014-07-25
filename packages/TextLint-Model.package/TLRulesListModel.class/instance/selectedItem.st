accessing
selectedItem
 ^self selectionIndex = 0
  ifTrue: [nil]
  ifFalse: [self rulesList at: self selectionIndex]