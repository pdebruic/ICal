generated-scanner
scan18
	self recordMatch: #(49 52).
	self step.
	(currentCharacter == $	 or: [currentCharacter == $ ]) 
		ifTrue: [^self scan5].
	^self reportLastMatch