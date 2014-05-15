composing
+ aWritingStyle
	^ self class
		named: (self name , ' + ' , aWritingStyle name)
		formedBy: (self rules addAll: aWritingStyle rules; yourself)