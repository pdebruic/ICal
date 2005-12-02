*ICal
fromVCardString: aString
	^ICCardVersion value >= 3.0
		ifTrue: [ self fromNewString: aString ]
		ifFalse: [ self fromOldString: aString ]