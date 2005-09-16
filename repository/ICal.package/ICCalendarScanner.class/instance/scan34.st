generated-scanner
scan34
	self step.
	currentCharacter == $R ifTrue: [^self scan35].
	^self reportLastMatch