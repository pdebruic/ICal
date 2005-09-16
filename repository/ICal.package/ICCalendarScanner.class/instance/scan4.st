generated-scanner
scan4
	self step.
	currentCharacter == $O 
		ifTrue: 
			[self step.
			currentCharacter == $S 
				ifTrue: 
					[self step.
					currentCharacter == $O 
						ifTrue: 
							[self step.
							currentCharacter == $F 
								ifTrue: 
									[self step.
									currentCharacter == $T 
										ifTrue: 
											[self step.
											currentCharacter == $- 
												ifTrue: 
													[self step.
													currentCharacter == $C 
														ifTrue: 
															[self step.
															currentCharacter == $D 
																ifTrue: 
																	[self step.
																	currentCharacter == $O 
																		ifTrue: 
																			[self step.
																			currentCharacter == $- 
																				ifTrue: 
																					[self step.
																					currentCharacter == $I 
																						ifTrue: 
																							[self step.
																							currentCharacter == $M 
																								ifTrue: 
																									[self step.
																									currentCharacter == $P 
																										ifTrue: 
																											[self step.
																											currentCharacter == $O 
																												ifTrue: 
																													[self step.
																													currentCharacter == $R 
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
																																					currentCharacter == $C 
																																						ifTrue: 
																																							[self step.
																																							currentCharacter == $E ifTrue: [^self recordAndReportMatch: #(29)].
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
							^self reportLastMatch].
					^self reportLastMatch].
			^self reportLastMatch].
	^self reportLastMatch