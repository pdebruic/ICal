converting
idFromString: aString
	| position idString curEvent |
	curEvent := self events last.
	position := aString findLast: [:char | char = $/].
	position = 0 ifTrue: [^0].
	
	idString := aString copyFrom: position + 1 to: aString size.
	
	idString size < 4 ifTrue: [^0].
		
	(idString copyFrom: 1 to: curEvent kind size) = curEvent kind ifTrue: [
		^idString
	].
	^0.