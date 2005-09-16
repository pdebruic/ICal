generated-scanner
scan14
	self step.
	currentCharacter == $E 
		ifTrue: 
			[self step.
			currentCharacter == $S 
				ifTrue: 
					[self step.
					currentCharacter == $C 
						ifTrue: 
							[self step.
							currentCharacter == $R 
								ifTrue: 
									[self step.
									currentCharacter == $I 
										ifTrue: 
											[self step.
											currentCharacter == $P 
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
																			currentCharacter == $N ifTrue: [^self recordAndReportMatch: #(46)].
																			^self reportLastMatch].
																	^self reportLastMatch].
															^self reportLastMatch].
													^self reportLastMatch].
											^self reportLastMatch].
									^self reportLastMatch].
							^self reportLastMatch].
					^self reportLastMatch].
			^self reportLastMatch].
	currentCharacter == $T ifTrue: [^self scan16].
	currentCharacter == $U ifTrue: [^self scan15].
	^self reportLastMatch