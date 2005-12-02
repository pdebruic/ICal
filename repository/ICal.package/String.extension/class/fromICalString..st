*ICal
fromICalString: aString
	^ICCalendarVersion value >= 2.0
		ifTrue: [ self fromNewString: aString ]
		ifFalse: [ self fromOldString: aString ]