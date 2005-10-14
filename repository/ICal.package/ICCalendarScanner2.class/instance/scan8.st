generated-scanner
scan8
	self recordMatch: #(9).
	self step.
	(currentCharacter == $	 or: 
			[(currentCharacter between: $  and: $!) or: 
					[(currentCharacter between: $# and: $~) 
						or: [currentCharacter between: $ and: $ø]]]) 
		ifTrue: 
			[
			[self recordMatch: #(9).
			self step.
			currentCharacter == $	 or: 
					[(currentCharacter between: $  and: $~) 
						or: [currentCharacter between: $ and: $ø]]] 
					whileTrue.
			^self reportLastMatch].
	currentCharacter == $" ifTrue: [^self scan6].
	^self reportLastMatch