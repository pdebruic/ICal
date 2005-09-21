generated-scanner
scan7
	self recordMatch: #(52).
	self step.
	(currentCharacter == $	 or: [currentCharacter == $ ]) 
		ifTrue: [^self scan6].
	^self reportLastMatch