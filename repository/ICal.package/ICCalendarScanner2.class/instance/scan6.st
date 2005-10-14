generated-scanner
scan6
	
	[self recordMatch: #(6 9).
	self step.
	(currentCharacter == $	 or: 
			[(currentCharacter between: $  and: $!) or: 
					[(currentCharacter between: $# and: $/) or: 
							[(currentCharacter between: $: and: $@) or: 
									[(currentCharacter between: $[ and: $`) or: 
											[(currentCharacter between: ${ and: $~) 
												or: [currentCharacter between: $ and: $ø]]]]]]) 
		ifTrue: 
			[
			[self recordMatch: #(9).
			self step.
			currentCharacter == $	 or: 
					[(currentCharacter between: $  and: $~) 
						or: [currentCharacter between: $ and: $ø]]] 
					whileTrue.
			^self reportLastMatch].
	currentCharacter isDigit or: 
			[(currentCharacter between: $A and: $Z) 
				or: [currentCharacter between: $a and: $z]]] 
			whileTrue.
	currentCharacter == $" ifTrue: [^self scan7].
	^self reportLastMatch