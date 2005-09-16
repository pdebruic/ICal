events
addEvent: anEvent 
	| sameEvents ids newId |
	anEvent calendar: self.
	
	"calculate id"
	sameEvents := self events select: [:event | event kind = anEvent kind].
	ids := sameEvents collect: [:event | (event id allButFirst: anEvent kind size) asInteger].
	newId := ids isEmpty ifTrue: [1] ifFalse: [ids max + 1].
	anEvent id: anEvent kind, newId asString.
	
	^self events add: anEvent