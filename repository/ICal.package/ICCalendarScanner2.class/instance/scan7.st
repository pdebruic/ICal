generated-scanner
scan7
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
	currentCharacter == $- ifTrue: [^self scan8].
	^self reportLastMatch