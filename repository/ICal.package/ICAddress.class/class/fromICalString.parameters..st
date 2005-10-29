instance creation
fromICalString: aString parameters: aDictionary
	| instance parts |
	instance := self new.
	instance types: ((aDictionary includesKey: 'TYPE')
		ifTrue: [ ((aDictionary at: 'TYPE') collect: [ :each | each asLowercase]) asSet ]
		ifFalse: [ self defaultTypes ]).
	parts := aString  subStringsFull: #($;).
	instance poBox: parts first.
	instance extended: parts second.
	instance street: parts third.
	instance locality: parts fourth.
	instance region: parts fifth.
	instance postalcode: parts sixth.
	instance country: parts seventh.
	^instance