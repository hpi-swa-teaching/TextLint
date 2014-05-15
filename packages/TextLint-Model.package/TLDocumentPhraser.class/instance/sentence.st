grammar
sentence
	^ (#any asParser starLazy: sentenceTerminator / paragraphTerminator / documentTerminator) , (sentenceTerminator optional)