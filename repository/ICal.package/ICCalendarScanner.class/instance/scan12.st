generated-scanner
scan12
	self step.
	currentCharacter == $R 
		ifTrue: 
			[self step.
			currentCharacter == $A 
				ifTrue: 
					[self step.
					currentCharacter == $N 
						ifTrue: 
							[self step.
							currentCharacter == $S 
								ifTrue: 
									[self step.
									currentCharacter == $P ifTrue: [^self recordAndReportMatch: #(27)].
									^self reportLastMatch].
							^self reportLastMatch].
					^self reportLastMatch].
			^self reportLastMatch].
	currentCharacter == $Z 
		ifTrue: 
			[self step.
			currentCharacter == $I 
				ifTrue: 
					[self step.
					currentCharacter == $D ifTrue: [^self recordAndReportMatch: #(19)].
					^self reportLastMatch].
			currentCharacter == $N 
				ifTrue: 
					[self step.
					currentCharacter == $A 
						ifTrue: 
							[self step.
							currentCharacter == $M 
								ifTrue: 
									[self step.
									currentCharacter == $E ifTrue: [^self recordAndReportMatch: #(2)].
									^self reportLastMatch].
							^self reportLastMatch].
					^self reportLastMatch].
			currentCharacter == $O 
				ifTrue: 
					[self step.
					currentCharacter == $F 
						ifTrue: 
							[self step.
							currentCharacter == $F 
								ifTrue: 
									[self step.
									currentCharacter == $S 
										ifTrue: 
											[self step.
											currentCharacter == $E 
												ifTrue: 
													[self step.
													currentCharacter == $T 
														ifTrue: 
															[self step.
															currentCharacter == $F 
																ifTrue: 
																	[self step.
																	currentCharacter == $R 
																		ifTrue: 
																			[self step.
																			currentCharacter == $O 
																				ifTrue: 
																					[self step.
																					currentCharacter == $M ifTrue: [^self recordAndReportMatch: #(3)].
																					^self reportLastMatch].
																			^self reportLastMatch].
																	^self reportLastMatch].
															currentCharacter == $T 
																ifTrue: 
																	[self step.
																	currentCharacter == $O ifTrue: [^self recordAndReportMatch: #(4)].
																	^self reportLastMatch].
															^self reportLastMatch].
													^self reportLastMatch].
											^self reportLastMatch].
									^self reportLastMatch].
							^self reportLastMatch].
					^self reportLastMatch].
			^self reportLastMatch].
	^self reportLastMatch