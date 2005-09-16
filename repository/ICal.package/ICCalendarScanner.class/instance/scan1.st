generated-scanner
scan1
	self step.
	currentCharacter == $I ifTrue: [^self scan2].
	^self reportLastMatch