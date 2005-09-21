generated-scanner
scan18
	self recordMatch: #(52).
	self step.
	(currentCharacter == $	 or: [currentCharacter == $ ]) 
		ifTrue: [^self scan6].
	currentCharacter == $
 ifTrue: [^self scan7].
	^self reportLastMatch