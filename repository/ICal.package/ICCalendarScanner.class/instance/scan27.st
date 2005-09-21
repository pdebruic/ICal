generated-scanner
scan27
	
	[self step.
	(currentCharacter <= $D 
		or: [(currentCharacter between: $F and: $M) or: [currentCharacter >= $O]]) 
			ifTrue: [^self scan5].
	currentCharacter == $E] 
			whileTrue.
	currentCharacter == $N 
		ifTrue: 
			[self step.
			(currentCharacter <= $C or: [currentCharacter >= $F]) 
				ifTrue: [^self scan5].
			currentCharacter == $D 
				ifTrue: 
					[self step.
					(currentCharacter <= $9 
						or: [(currentCharacter between: $; and: $D) or: [currentCharacter >= $F]]) 
							ifTrue: [^self scan5].
					currentCharacter == $: 
						ifTrue: 
							[self step.
							(currentCharacter <= $D 
								or: [(currentCharacter between: $F and: $U) or: [currentCharacter >= $W]]) 
									ifTrue: [^self scan5].
							currentCharacter == $E ifTrue: [^self scan27].
							currentCharacter == $V 
								ifTrue: 
									[self step.
									(currentCharacter <= $@ 
										or: [(currentCharacter between: $B and: $D) or: [currentCharacter >= $F]]) 
											ifTrue: [^self scan5].
									currentCharacter == $A 
										ifTrue: 
											[self step.
											(currentCharacter <= $D 
												or: [(currentCharacter between: $F and: $K) or: [currentCharacter >= $M]]) 
													ifTrue: [^self scan5].
											currentCharacter == $E ifTrue: [^self scan27].
											currentCharacter == $L 
												ifTrue: 
													[self step.
													(currentCharacter <= $@ 
														or: [(currentCharacter between: $B and: $D) or: [currentCharacter >= $F]]) 
															ifTrue: [^self scan5].
													currentCharacter == $A 
														ifTrue: 
															[self step.
															(currentCharacter <= $D 
																or: [(currentCharacter between: $F and: $Q) or: [currentCharacter >= $S]]) 
																	ifTrue: [^self scan5].
															currentCharacter == $E ifTrue: [^self scan27].
															currentCharacter == $R 
																ifTrue: 
																	[self step.
																	(currentCharacter <= $D 
																		or: [(currentCharacter between: $F and: $L) or: [currentCharacter >= $N]]) 
																			ifTrue: [^self scan5].
																	currentCharacter == $E ifTrue: [^self scan27].
																	currentCharacter == $M 
																		ifTrue: 
																			[self step.
																			(currentCharacter <= $	 or: 
																					[(currentCharacter between: $ and: $) 
																						or: [(currentCharacter between: $ and: $D) or: [currentCharacter >= $F]]]) 
																				ifTrue: [^self scan5].
																			currentCharacter == $
 ifTrue: [^self scan28].
																			currentCharacter == $
 
																				ifTrue: 
																					[self recordMatch: #(51).
																					self step.
																					(currentCharacter <= $	 
																						or: [(currentCharacter between: $ and: $D) or: [currentCharacter >= $F]]) 
																							ifTrue: [^self scan5].
																					currentCharacter == $
 ifTrue: [^self scan28].
																					currentCharacter == $E ifTrue: [^self scan27].
																					^self reportLastMatch].
																			currentCharacter == $E ifTrue: [^self scan27].
																			^self reportLastMatch].
																	^self reportLastMatch].
															^self reportLastMatch].
													currentCharacter == $E ifTrue: [^self scan27].
													^self reportLastMatch].
											^self reportLastMatch].
									currentCharacter == $E ifTrue: [^self scan27].
									^self reportLastMatch].
							^self reportLastMatch].
					currentCharacter == $E ifTrue: [^self scan27].
					^self reportLastMatch].
			currentCharacter == $E ifTrue: [^self scan27].
			^self reportLastMatch].
	^self reportLastMatch