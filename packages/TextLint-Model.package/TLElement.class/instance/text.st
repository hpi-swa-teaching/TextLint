accessing
text
	^ String streamContents: [ :stream | self printContentOn: stream ]