generated-scanner
scan35
	self step.
	currentCharacter == $- ifTrue: [^self scan36].
	^self reportLastMatch