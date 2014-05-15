accessing
allElements
	^OrderedCollection new
				add: self;
				addAll: paragraphs;
				addAll: self sentences;
				addAll: self words;
				yourself.