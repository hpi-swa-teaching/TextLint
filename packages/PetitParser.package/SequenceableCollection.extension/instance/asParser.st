*petitparser-core-converting
asParser
	self notify: 'SequenceableCollection>>#asParser is no longer supported. If you would like to create a PPSequenceParser from a Collection consider using #asSequenceParser instead.'.
	^ self asSequenceParser