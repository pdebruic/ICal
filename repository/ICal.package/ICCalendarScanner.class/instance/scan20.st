generated-scanner
scan20
	self recordMatch: #(49 52).
	self step.
	(currentCharacter == $	 or: [currentCharacter == $ ]) 
		ifTrue: [^self scan6].
	currentCharacter == $
 ifTrue: [^self scan19].
	^self reportLastMatch