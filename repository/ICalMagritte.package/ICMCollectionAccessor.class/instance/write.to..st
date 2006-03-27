model
write: anObject to: aModel
	super
		write: (self reference fromStringCollection:
			(anObject isNil ifFalse: [ anObject lines ] ifTrue: [ #() ]))
		to: aModel