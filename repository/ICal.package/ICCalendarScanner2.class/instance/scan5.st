generated-scanner
scan5
	self recordMatch: #(8 9).
	self step.
	(currentCharacter == $	 or: 
			[(currentCharacter between: $  and: $~) 
				or: [currentCharacter between: $ and: $ø]]) 
		ifTrue: 
			[
			[self recordMatch: #(9).
			self step.
			currentCharacter == $	 or: 
					[(currentCharacter between: $  and: $~) 
						or: [currentCharacter between: $ and: $ø]]] 
					whileTrue.
			^self reportLastMatch].
	^self reportLastMatch