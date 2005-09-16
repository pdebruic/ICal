generated-scanner
scan30
	self step.
	currentCharacter == $: ifTrue: [^self scan31].
	^self reportLastMatch