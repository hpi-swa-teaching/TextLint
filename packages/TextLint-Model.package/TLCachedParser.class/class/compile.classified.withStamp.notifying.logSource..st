private
compile: aTextString classified: aCategorySymbol withStamp: aStampString notifying: aRequestor logSource: aBoolean
	self flush.
	^ super compile: aTextString classified: aCategorySymbol withStamp: aStampString notifying: aRequestor logSource: aBoolean