generated-scanner
scan2
	self step.
	currentCharacter == $C ifTrue: [^self scan3].
	^self reportLastMatch