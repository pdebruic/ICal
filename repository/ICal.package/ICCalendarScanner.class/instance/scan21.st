generated-scanner
scan21
	self step.
	currentCharacter == $I ifTrue: [^self scan22].
	^self reportLastMatch