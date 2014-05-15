RBParseTreeRewriter new
	replace: 'words add: (TLWord with: (PPToken on: `@object))' with: 'self createWord: `@object';
	yourself
	