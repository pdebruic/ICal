generated-scanner
scan17
	self recordMatch: #(52).
	self step.
	(currentCharacter == $	 or: [currentCharacter == $ ]) 
		ifTrue: [^self scan5].
	currentCharacter == $
 ifTrue: [^self scan6].
	^self reportLastMatch