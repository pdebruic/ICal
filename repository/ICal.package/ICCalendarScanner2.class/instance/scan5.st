generated-scanner
scan5
	self recordMatch: #(9).
	self step.
	(currentCharacter == $	 or: 
			[(currentCharacter between: $  and: $,) or: 
					[(currentCharacter between: $. and: $~) 
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
	currentCharacter == $- 
		ifTrue: 
			[self recordMatch: #(9).
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
			currentCharacter == $" ifTrue: [^self scan4].
			^self reportLastMatch].
	^self reportLastMatch