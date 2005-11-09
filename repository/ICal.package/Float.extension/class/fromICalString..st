*ICal
fromICalString: aString
	| float |
	float := aString asNumber.
	^float asICalString ~= aString
		ifFalse: [ float ]
		ifTrue: [ ScaledDecimal fromICalString: aString ]