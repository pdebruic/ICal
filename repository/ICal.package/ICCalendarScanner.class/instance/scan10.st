generated-scanner
scan10
	self recordMatch: #(48).
	self step.
	currentCharacter == $: ifTrue: [^self scan5].
	^self reportLastMatch