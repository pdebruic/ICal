generated-scanner
scan9
	self step.
	currentCharacter == $N ifTrue: [^self scan29].
	^self reportLastMatch