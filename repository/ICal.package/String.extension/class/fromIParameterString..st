*ICal
fromIParameterString: aString
	^((aString first = $"
		and: [ aString last = $" ]
		and: [ aString size > 1 ])
			ifTrue: [ aString copyFrom: 2 to: aString size - 1 ]
			ifFalse: [ aString ]) asUppercase