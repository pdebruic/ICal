generated-scanner
scan23
	self step.
	currentCharacter == $: ifTrue: [^self scan24].
	^self reportLastMatch