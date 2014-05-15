private
flush
	self subclasses do: [ :each | each flush ].
	instance := nil