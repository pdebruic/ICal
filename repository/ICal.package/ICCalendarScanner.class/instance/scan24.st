generated-scanner
scan24
	self step.
	currentCharacter == $: ifTrue: [^self scan25].
	^self reportLastMatch