helpers
createParagraph
	|paragraph|
	paragraph := paragraphs add: (TLParagraph withAll: sentences).
	sentences := OrderedCollection new.
	^ paragraph