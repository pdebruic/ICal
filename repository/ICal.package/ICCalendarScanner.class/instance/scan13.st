generated-scanner
scan13
	self step.
	currentCharacter == $E 
		ifTrue: 
			[self step.
			currentCharacter == $R 
				ifTrue: 
					[self step.
					currentCharacter == $C 
						ifTrue: 
							[self step.
							currentCharacter == $E 
								ifTrue: 
									[self step.
									currentCharacter == $N 
										ifTrue: 
											[self step.
											currentCharacter == $T 
												ifTrue: 
													[self step.
													currentCharacter == $C 
														ifTrue: 
															[self step.
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
																													currentCharacter == $D ifTrue: [^self recordAndReportMatch: #(11)].
																													^self reportLastMatch].
																											^self reportLastMatch].
																									^self reportLastMatch].
																							^self reportLastMatch].
																					^self reportLastMatch].
																			^self reportLastMatch].
																	^self reportLastMatch].
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
			currentCharacter == $I 
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
											currentCharacter == $T 
												ifTrue: 
													[self step.
													currentCharacter == $Y ifTrue: [^self recordAndReportMatch: #(30)].
													^self reportLastMatch].
											^self reportLastMatch].
									^self reportLastMatch].
							^self reportLastMatch].
					^self reportLastMatch].
			currentCharacter == $O 
				ifTrue: 
					[self step.
					currentCharacter == $D 
						ifTrue: 
							[self step.
							currentCharacter == $I 
								ifTrue: 
									[self step.
									currentCharacter == $D ifTrue: [^self recordAndReportMatch: #(18)].
									^self reportLastMatch].
							^self reportLastMatch].
					^self reportLastMatch].
			^self reportLastMatch].
	^self reportLastMatch