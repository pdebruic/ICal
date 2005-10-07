instance creation
fromICalString: aString
	self flag: #todo. "look up in calendar or something like that"
	^self summary: aString