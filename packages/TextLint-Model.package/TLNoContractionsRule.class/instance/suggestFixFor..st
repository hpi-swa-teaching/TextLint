accessing
suggestFixFor: aText
	^ self availableFixes at: aText ifAbsent: [ ^self defaultFix: aText].