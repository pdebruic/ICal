generated-scanner
scan25
	self step.
	currentCharacter == $D 
		ifTrue: 
			[self step.
			currentCharacter == $A 
				ifTrue: 
					[self step.
					currentCharacter == $Y 
						ifTrue: 
							[self step.
							currentCharacter == $L 
								ifTrue: 
									[self step.
									currentCharacter == $I 
										ifTrue: 
											[self step.
											currentCharacter == $G 
												ifTrue: 
													[self step.
													currentCharacter == $H 
														ifTrue: 
															[self step.
															currentCharacter == $T ifTrue: [^self recordAndReportMatch: #(9)].
															^self reportLastMatch].
													^self reportLastMatch].
											^self reportLastMatch].
									^self reportLastMatch].
							^self reportLastMatch].
					^self reportLastMatch].
			^self reportLastMatch].
	currentCharacter == $S 
		ifTrue: 
			[self step.
			currentCharacter == $T 
				ifTrue: 
					[self step.
					currentCharacter == $A 
						ifTrue: 
							[self step.
							currentCharacter == $N 
								ifTrue: 
									[self step.
									currentCharacter == $D 
										ifTrue: 
											[self step.
											currentCharacter == $A 
												ifTrue: 
													[self step.
													currentCharacter == $R 
														ifTrue: 
															[self step.
															currentCharacter == $D ifTrue: [^self recordAndReportMatch: #(1)].
															^self reportLastMatch].
													^self reportLastMatch].
											^self reportLastMatch].
									^self reportLastMatch].
							^self reportLastMatch].
					^self reportLastMatch].
			^self reportLastMatch].
	currentCharacter == $V ifTrue: [^self scan26].
	^self reportLastMatch