generated-scanner
scan21
	self step.
	currentCharacter == $G ifTrue: [^self scan22].
	^self reportLastMatch