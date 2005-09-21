generated-scanner
scan17
	self step.
	currentCharacter == $E 
		ifTrue: 
			[self step.
			currentCharacter == $N 
				ifTrue: 
					[self step.
					currentCharacter == $D ifTrue: [^self recordAndReportMatch: #(38)].
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
							currentCharacter == $M 
								ifTrue: 
									[self step.
									currentCharacter == $P ifTrue: [^self recordAndReportMatch: #(47)].
									^self reportLastMatch].
							currentCharacter == $R 
								ifTrue: 
									[self step.
									currentCharacter == $T 
										ifTrue: 
											[self recordMatch: #(23).
											self step.
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
																																	[self step.
																																	currentCharacter == $: ifTrue: [^self recordAndReportMatch: #(32)].
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