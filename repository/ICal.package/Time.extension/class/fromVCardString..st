*iCal
fromVCardString: aString
	| time fraction nanos |
	time := self fromICalString: ((aString copyUpTo: $.) reject: [ :each | each = $: ]).
	^(aString includes: $.)
		ifFalse: [ time ]
		ifTrue: [
			fraction := (aString copyAfter: $.) copyUpTo: $Z.
			nanos := fraction asNumber * (10 raisedTo: 9 - fraction size).
			self hour: time hour minute: time minute second: time second nanoSecond: nanos ]