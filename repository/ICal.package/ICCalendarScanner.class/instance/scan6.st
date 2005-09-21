generated-scanner
scan6
	
	[self step.
	currentCharacter <= $	 
		or: [(currentCharacter between: $ and: $) or: [currentCharacter >= $]]] 
			whileTrue.
	currentCharacter == $
 ifTrue: [^self scan7].
	currentCharacter == $
 ifTrue: [^self scan18].
	^self reportLastMatch