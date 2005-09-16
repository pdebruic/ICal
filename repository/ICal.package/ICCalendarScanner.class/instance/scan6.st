generated-scanner
scan6
	self recordMatch: #(52).
	self step.
	(currentCharacter == $	 or: [currentCharacter == $ ]) 
		ifTrue: [^self scan5].
	^self reportLastMatch