generated-scanner
scan5
	
	[self step.
	currentCharacter <= $	 
		or: [(currentCharacter between: $ and: $) or: [currentCharacter >= $]]] 
			whileTrue.
	currentCharacter == $
 ifTrue: [^self scan6].
	currentCharacter == $
 ifTrue: [^self scan17].
	^self reportLastMatch