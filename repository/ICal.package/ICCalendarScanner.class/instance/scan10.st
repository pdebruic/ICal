generated-scanner
scan10
	self step.
	currentCharacter == $E ifTrue: [^self scan21].
	^self reportLastMatch