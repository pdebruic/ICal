generated-scanner
scan9
	self step.
	currentCharacter == $E ifTrue: [^self scan20].
	^self reportLastMatch