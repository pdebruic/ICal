converting
parseAttribute: aString
	| str |
	str := aString allButFirst allButLast.
	^str reject: [:char | char == Character cr or: [char == Character lf]]. 