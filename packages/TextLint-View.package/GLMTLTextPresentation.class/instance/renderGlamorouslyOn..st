rendering
renderGlamorouslyOn: aRenderer 
	self registerAnnouncements.
	^ aRenderer renderTLTextPresentation: self inBrowser: self browser.