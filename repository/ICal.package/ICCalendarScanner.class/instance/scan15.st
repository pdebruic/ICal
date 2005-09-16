generated-scanner
scan15
	self step.
	currentCharacter == $E 
		ifTrue: 
			[self step.
			currentCharacter == $; 
				ifTrue: 
					[self step.
					currentCharacter == $V 
						ifTrue: 
							[self step.
							currentCharacter == $A 
								ifTrue: 
									[self step.
									currentCharacter == $L 
										ifTrue: 
											[self step.
											currentCharacter == $U 
												ifTrue: 
													[self step.
													currentCharacter == $E 
														ifTrue: 
															[self step.
															currentCharacter == $= 
																ifTrue: 
																	[self step.
																	currentCharacter == $D 
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
																									[self recordMatch: #(34).
																									self step.
																									currentCharacter == $- 
																										ifTrue: 
																											[self step.
																											currentCharacter == $T 
																												ifTrue: 
																													[self step.
																													currentCharacter == $I 
																														ifTrue: 
																															[self step.
																															currentCharacter == $M 
																																ifTrue: 
																																	[self step.
																																	currentCharacter == $E ifTrue: [^self recordAndReportMatch: #(33)].
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
					^self reportLastMatch].
			^self reportLastMatch].
	currentCharacter == $R 
		ifTrue: 
			[self step.
			currentCharacter == $A 
				ifTrue: 
					[self step.
					currentCharacter == $T 
						ifTrue: 
							[self step.
							currentCharacter == $I 
								ifTrue: 
									[self step.
									currentCharacter == $O 
										ifTrue: 
											[self step.
											currentCharacter == $N ifTrue: [^self recordAndReportMatch: #(45)].
											^self reportLastMatch].
									^self reportLastMatch].
							^self reportLastMatch].
					^self reportLastMatch].
			^self reportLastMatch].
	^self reportLastMatch