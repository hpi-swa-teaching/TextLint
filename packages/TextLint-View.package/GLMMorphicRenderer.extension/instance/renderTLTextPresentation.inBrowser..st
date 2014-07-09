*textlint-view
renderTLTextPresentation: aTLTextPresentation inBrowser: aBrowser
	| a |
	a := GLMTLMorphicTextRenderer render: aTLTextPresentation from: self.
	a browser: aBrowser.
	^ a.