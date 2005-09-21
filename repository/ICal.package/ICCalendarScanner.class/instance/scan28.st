generated-scanner
scan28
	self recordMatch: #(51).
	self step.
	currentCharacter ~~ $E ifTrue: [^self scan5].
	currentCharacter == $E ifTrue: [^self scan27].
	^self reportLastMatch