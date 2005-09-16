generated-scanner
scan22
	self step.
	currentCharacter == $N ifTrue: [^self scan23].
	^self reportLastMatch