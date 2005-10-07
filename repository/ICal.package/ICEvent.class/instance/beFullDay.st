actions
beFullDay
	self start ifNotNil: [
		self start: self start asDate ].
	self end isNil
		ifTrue: [ self end: self start + 1 day ]
		ifFalse: [ self end: self end asDate ]	