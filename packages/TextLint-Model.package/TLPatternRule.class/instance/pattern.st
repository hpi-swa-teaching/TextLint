accessing
pattern
	"Answer the lazily initialized pattern. Do not override in subclasses."

	^ pattern ifNil: [ pattern := self newPattern ]