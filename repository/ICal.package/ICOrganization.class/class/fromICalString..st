instance creation
fromICalString: aString
	| instance parts |
	instance := self new.
	parts := aString subStringsFull: #($;).
	instance name: (parts isEmpty ifTrue: [ '' ] ifFalse: [ String fromICalString: parts first ]).
	instance unitNames: (
		parts allButFirst
			collect: [ :each | String fromICalString: each]
			thenSelect: [ :each | each notEmpty ]).
	^instance