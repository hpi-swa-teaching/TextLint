composing
- aWritingStyle
	^ self class 
		named: (self name , ' - ' , aWritingStyle name)
		formedBy: (self rules removeAllFoundIn: aWritingStyle rules; yourself)