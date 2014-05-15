tokens
markup
	^ (($< asParser , $> asParser negate plus , $> asParser)
	/  ($& asParser , $; asParser negate plus , $; asParser))
			token ==> [ :token | TLMarkup with: token ]