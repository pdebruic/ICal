generated-scanner
scan1
	
	[self recordMatch: #(7 9).
	self step.
	currentCharacter == $	 or: 
			[(currentCharacter between: $  and: $!) or: 
					[(currentCharacter between: $# and: $+) or: 
							[(currentCharacter between: $- and: $9) or: 
									[(currentCharacter between: $< and: $~) 
										or: [currentCharacter between: $ and: $ø]]]]]] 
			whileTrue.
	(currentCharacter == $" 
		or: [currentCharacter == $, or: [currentCharacter between: $: and: $;]]) 
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