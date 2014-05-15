grammar
paragraph
	^ (sentence starLazy: paragraphTerminator / documentTerminator) , (paragraphTerminator optional) 