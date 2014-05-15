tests-errors
testInvalidType
	self assertInvalidQuery: '{}'.
	self assertInvalidQuery: '{broken}'.
	self assertInvalidQuery: '{very broken}'