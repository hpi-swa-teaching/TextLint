Glamour
exportButtonOn: aBrowser

 aBrowser transmit 
  to: #export;
  from: #files;
  andShow: [ :a |   
   a actionList 
    act: [ | activateWindow | 
      activateWindow := TLActivateRulesDialogWindow new initializeWith: textLintChecker.
      activateWindow title: 'Re-activate ignored rules'.
      World openModal: activateWindow.
      activateWindow cancelled ifFalse: [ | listMorph removedRule |
       listMorph := activateWindow listMorph.
       removedRule := listMorph model selectedItem.
       self textLintChecker reactivateRule: removedRule.
       listMorph model rulesList: (listMorph model rulesList select: [:each | (each = removedRule) not]) asArray.
       "TODO: automatic recheck"].
     ]
    entitled: 'Re-activate Rules';
    act: [:presentation :filePath | 
     Cursor wait showWhile:[       
       | fileStream cursor |
       cursor := 1.
       fileStream := CrLfFileStream forceNewFileNamed: ((filePath sliceFrom: ((filePath findLastOccurrenceOfString: FileDirectory slash startingAt: 1) + 1) to: (filePath size - 4)) , '.out').
       results do: [:failure |
        fileStream nextPutAll: failure rule name.
        fileStream nextPutAll: ' - '.
        fileStream nextPutAll: failure rule rationale.
        fileStream nextPutAll: String cr.].
       fileStream flush.
       fileStream close.].
    StandardWindow new message: 'Export completed'.
      ] 
    entitled: 'Export'].
   
  ^aBrowser