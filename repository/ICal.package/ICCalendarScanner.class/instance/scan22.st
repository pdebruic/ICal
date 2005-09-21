generated-scanner
scan22
	self step.
	currentCharacter == $I ifTrue: [^self scan23].
	^self reportLastMatch