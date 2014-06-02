*textlint-view
renderTLTextPresentation: aTLTextPresentation inBrowser: aBrowser
	| a |
	a := GLMMorphicTLTextRenderer render: aTLTextPresentation from: self.
	a browser: aBrowser.
	^ a.