generated-scanner
scan8
	self step.
	currentCharacter == $N ifTrue: [^self scan29].
	^self reportLastMatch