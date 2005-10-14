generated-scanner
scan4
	
	[self recordMatch: #(9).
	self step.
	currentCharacter == $	 or: 
			[(currentCharacter between: $  and: $!) or: 
					[(currentCharacter between: $# and: $~) 
						or: [currentCharacter between: $ and: $ø]]]] 
			whileTrue.
	currentCharacter == $" ifTrue: [^self scan5].
	^self reportLastMatch