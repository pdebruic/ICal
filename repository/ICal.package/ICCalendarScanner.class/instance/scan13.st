generated-scanner
scan13
	self step.
	currentCharacter == $A 
		ifTrue: 
			[self step.
			currentCharacter == $L 
				ifTrue: 
					[self step.
					currentCharacter == $S 
						ifTrue: 
							[self step.
							currentCharacter == $C 
								ifTrue: 
									[self step.
									currentCharacter == $A 
										ifTrue: 
											[self step.
											currentCharacter == $L 
												ifTrue: 
													[self step.
													currentCharacter == $E ifTrue: [^self recordAndReportMatch: #(21)].
													^self reportLastMatch].
											^self reportLastMatch].
									^self reportLastMatch].
							^self reportLastMatch].
					^self reportLastMatch].
			currentCharacter == $T 
				ifTrue: 
					[self step.
					currentCharacter == $E 
						ifTrue: 
							[self step.
							currentCharacter == $G 
								ifTrue: 
									[self step.
									currentCharacter == $O 
										ifTrue: 
											[self step.
											currentCharacter == $R 
												ifTrue: 
													[self step.
													currentCharacter == $I 
														ifTrue: 
															[self step.
															currentCharacter == $E 
																ifTrue: 
																	[self step.
																	currentCharacter == $S ifTrue: [^self recordAndReportMatch: #(43)].
																	^self reportLastMatch].
															^self reportLastMatch].
													^self reportLastMatch].
											^self reportLastMatch].
									^self reportLastMatch].
							^self reportLastMatch].
					^self reportLastMatch].
			^self reportLastMatch].
	currentCharacter == $L 
		ifTrue: 
			[self step.
			currentCharacter == $A 
				ifTrue: 
					[self step.
					currentCharacter == $S 
						ifTrue: 
							[self step.
							currentCharacter == $S ifTrue: [^self recordAndReportMatch: #(26)].
							^self reportLastMatch].
					^self reportLastMatch].
			^self reportLastMatch].
	currentCharacter == $O 
		ifTrue: 
			[self step.
			currentCharacter == $M 
				ifTrue: 
					[self step.
					currentCharacter == $P 
						ifTrue: 
							[self step.
							currentCharacter == $L 
								ifTrue: 
									[self step.
									currentCharacter == $E 
										ifTrue: 
											[self step.
											currentCharacter == $T 
												ifTrue: 
													[self step.
													currentCharacter == $E 
														ifTrue: 
															[self step.
															currentCharacter == $D ifTrue: [^self recordAndReportMatch: #(36)].
															^self reportLastMatch].
													^self reportLastMatch].
											^self reportLastMatch].
									^self reportLastMatch].
							^self reportLastMatch].
					^self reportLastMatch].
			^self reportLastMatch].
	currentCharacter == $R 
		ifTrue: 
			[self step.
			currentCharacter == $E 
				ifTrue: 
					[self step.
					currentCharacter == $A 
						ifTrue: 
							[self step.
							currentCharacter == $T 
								ifTrue: 
									[self step.
									currentCharacter == $E 
										ifTrue: 
											[self step.
											currentCharacter == $D ifTrue: [^self recordAndReportMatch: #(35)].
											^self reportLastMatch].
									^self reportLastMatch].
							^self reportLastMatch].
					^self reportLastMatch].
			^self reportLastMatch].
	^self reportLastMatch