generated-scanner
scan33
	self step.
	currentCharacter == $M ifTrue: [^self scan1].
	currentCharacter == $W ifTrue: [^self scan34].
	^self reportLastMatch