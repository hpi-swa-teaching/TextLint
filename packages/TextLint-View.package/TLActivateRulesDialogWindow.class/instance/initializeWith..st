as yet unclassified
initializeWith: aTextLintChecker
 super initialize.
 listModel := TLRulesListModel new initialize.
 listModel rulesList: (aTextLintChecker ignoredRules) asArray.
 listMorph := PluggableListMorph on: listModel list: #list selected: #selectionIndex changeSelected: #selectionIndex:.
 listMorph beSingleSelection;
  extent: 250@400.
 self mainPanel addMorph: listMorph.