as yet unclassified
open
	| directory |
	directory := UITheme builder chooseDirectory: 'Select the directory containing the files to analyze'.
	directory isNil ifFalse: [		
		TLCodeBrowser new codeBrowser openOn: directory .].