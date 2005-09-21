generated-scanner
scan19
	self recordMatch: #(49 52).
	self step.
	(currentCharacter == $	 or: [currentCharacter == $ ]) 
		ifTrue: [^self scan6].
	^self reportLastMatch