generated-scanner
scan20
	self step.
	currentCharacter == $G ifTrue: [^self scan21].
	^self reportLastMatch