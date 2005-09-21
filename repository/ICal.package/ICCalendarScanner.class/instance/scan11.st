generated-scanner
scan11
	self recordMatch: #(48).
	self step.
	currentCharacter == $: ifTrue: [^self scan6].
	^self reportLastMatch