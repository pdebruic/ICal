generated-scanner
scan3
	self step.
	currentCharacter == $R ifTrue: [^self scan4].
	^self reportLastMatch