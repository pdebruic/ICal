generated-scanner
scanForToken
	self step.
	currentCharacter isDigit 
		ifTrue: 
			[
			[self step.
			currentCharacter isDigit] whileTrue.
			currentCharacter == $
 ifTrue: [^self recordAndReportMatch: #(53)].
			currentCharacter == $
 
				ifTrue: 
					[self recordMatch: #(53).
					self step.
					currentCharacter == $
 ifTrue: [^self recordAndReportMatch: #(53)].
					^self reportLastMatch].
			^self reportLastMatch].
	currentCharacter == $
 ifTrue: [^self scan11].
	currentCharacter == $
 
		ifTrue: 
			[self recordMatch: #(48).
			self step.
			currentCharacter == $
 ifTrue: [^self scan11].
			currentCharacter == $: ifTrue: [^self scan6].
			^self reportLastMatch].
	currentCharacter == $: 
		ifTrue: 
			[self step.
			(currentCharacter <= $	 or: 
					[(currentCharacter between: $ and: $) 
						or: [(currentCharacter between: $ and: $/) or: [currentCharacter >= $:]]]) 
				ifTrue: [^self scan6].
			currentCharacter isDigit 
				ifTrue: 
					[
					[self step.
					(currentCharacter <= $	 or: 
							[(currentCharacter between: $ and: $) or: 
									[(currentCharacter between: $ and: $/) 
										or: [(currentCharacter between: $: and: $S) or: [currentCharacter >= $U]]]]) 
						ifTrue: [^self scan6].
					currentCharacter isDigit] 
							whileTrue.
					currentCharacter == $
 ifTrue: [^self scan7].
					currentCharacter == $
 ifTrue: [^self scan18].
					currentCharacter == $T 
						ifTrue: 
							[self step.
							(currentCharacter <= $	 or: 
									[(currentCharacter between: $ and: $) 
										or: [(currentCharacter between: $ and: $/) or: [currentCharacter >= $:]]]) 
								ifTrue: [^self scan6].
							currentCharacter isDigit 
								ifTrue: 
									[
									[self step.
									(currentCharacter <= $	 or: 
											[(currentCharacter between: $ and: $) or: 
													[(currentCharacter between: $ and: $/) 
														or: [(currentCharacter between: $: and: $Y) or: [currentCharacter >= $[]]]]) 
										ifTrue: [^self scan6].
									currentCharacter isDigit] 
											whileTrue.
									currentCharacter == $
 ifTrue: [^self scan19].
									currentCharacter == $
 ifTrue: [^self scan20].
									currentCharacter == $Z 
										ifTrue: 
											[self step.
											(currentCharacter <= $	 
												or: [(currentCharacter between: $ and: $) or: [currentCharacter >= $]]) 
													ifTrue: [^self scan6].
											currentCharacter == $
 ifTrue: [^self scan19].
											currentCharacter == $
 ifTrue: [^self scan20].
											^self reportLastMatch].
									^self reportLastMatch].
							currentCharacter == $
 ifTrue: [^self scan7].
							currentCharacter == $
 ifTrue: [^self scan18].
							^self reportLastMatch].
					^self reportLastMatch].
			currentCharacter == $
 ifTrue: [^self scan7].
			currentCharacter == $
 ifTrue: [^self scan18].
			^self reportLastMatch].
	currentCharacter == $; 
		ifTrue: 
			[self step.
			currentCharacter == $T 
				ifTrue: 
					[self step.
					currentCharacter == $Z 
						ifTrue: 
							[self step.
							currentCharacter == $I 
								ifTrue: 
									[self step.
									currentCharacter == $D 
										ifTrue: 
											[self step.
											currentCharacter == $= 
												ifTrue: 
													[
													[self recordMatch: #(50).
													self step.
													currentCharacter <= $	 or: 
															[(currentCharacter between: $ and: $) 
																or: [(currentCharacter between: $ and: $9) or: [currentCharacter >= $;]]]] 
															whileTrue.
													^self reportLastMatch].
											^self reportLastMatch].
									^self reportLastMatch].
							^self reportLastMatch].
					^self reportLastMatch].
			^self reportLastMatch].
	currentCharacter == $B ifTrue: [^self scan10].
	currentCharacter == $C ifTrue: [^self scan14].
	currentCharacter == $D ifTrue: [^self scan15].
	currentCharacter == $E ifTrue: [^self scan9].
	currentCharacter == $L 
		ifTrue: 
			[self step.
			currentCharacter == $A 
				ifTrue: 
					[self step.
					currentCharacter == $S 
						ifTrue: 
							[self step.
							currentCharacter == $T 
								ifTrue: 
									[self step.
									currentCharacter == $- 
										ifTrue: 
											[self step.
											currentCharacter == $M 
												ifTrue: 
													[self step.
													currentCharacter == $O 
														ifTrue: 
															[self step.
															currentCharacter == $D 
																ifTrue: 
																	[self step.
																	currentCharacter == $I 
																		ifTrue: 
																			[self step.
																			currentCharacter == $F 
																				ifTrue: 
																					[self step.
																					currentCharacter == $I 
																						ifTrue: 
																							[self step.
																							currentCharacter == $E 
																								ifTrue: 
																									[self step.
																									currentCharacter == $D ifTrue: [^self recordAndReportMatch: #(12)].
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
			currentCharacter == $O 
				ifTrue: 
					[self step.
					currentCharacter == $C 
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
															currentCharacter == $N ifTrue: [^self recordAndReportMatch: #(39)].
															^self reportLastMatch].
													^self reportLastMatch].
											^self reportLastMatch].
									^self reportLastMatch].
							^self reportLastMatch].
					^self reportLastMatch].
			^self reportLastMatch].
	currentCharacter == $M 
		ifTrue: 
			[self step.
			currentCharacter == $E 
				ifTrue: 
					[self step.
					currentCharacter == $T 
						ifTrue: 
							[self step.
							currentCharacter == $H 
								ifTrue: 
									[self step.
									currentCharacter == $O 
										ifTrue: 
											[self step.
											currentCharacter == $D ifTrue: [^self recordAndReportMatch: #(20)].
											^self reportLastMatch].
									^self reportLastMatch].
							^self reportLastMatch].
					^self reportLastMatch].
			^self reportLastMatch].
	currentCharacter == $O 
		ifTrue: 
			[self step.
			currentCharacter == $R 
				ifTrue: 
					[self step.
					currentCharacter == $G 
						ifTrue: 
							[self step.
							currentCharacter == $A 
								ifTrue: 
									[self step.
									currentCharacter == $N 
										ifTrue: 
											[self step.
											currentCharacter == $I 
												ifTrue: 
													[self step.
													currentCharacter == $Z 
														ifTrue: 
															[self step.
															currentCharacter == $E 
																ifTrue: 
																	[self step.
																	currentCharacter == $R ifTrue: [^self recordAndReportMatch: #(25)].
																	^self reportLastMatch].
															^self reportLastMatch].
													^self reportLastMatch].
											^self reportLastMatch].
									^self reportLastMatch].
							^self reportLastMatch].
					^self reportLastMatch].
			^self reportLastMatch].
	currentCharacter == $P ifTrue: [^self scan13].
	currentCharacter == $R 
		ifTrue: 
			[self step.
			currentCharacter == $R 
				ifTrue: 
					[self step.
					currentCharacter == $U 
						ifTrue: 
							[self step.
							currentCharacter == $L 
								ifTrue: 
									[self step.
									currentCharacter == $E ifTrue: [^self recordAndReportMatch: #(28)].
									^self reportLastMatch].
							^self reportLastMatch].
					^self reportLastMatch].
			^self reportLastMatch].
	currentCharacter == $S 
		ifTrue: 
			[self step.
			currentCharacter == $E 
				ifTrue: 
					[self step.
					currentCharacter == $Q 
						ifTrue: 
							[self step.
							currentCharacter == $U 
								ifTrue: 
									[self step.
									currentCharacter == $E 
										ifTrue: 
											[self step.
											currentCharacter == $N 
												ifTrue: 
													[self step.
													currentCharacter == $C 
														ifTrue: 
															[self step.
															currentCharacter == $E ifTrue: [^self recordAndReportMatch: #(44)].
															^self reportLastMatch].
													^self reportLastMatch].
											^self reportLastMatch].
									^self reportLastMatch].
							^self reportLastMatch].
					^self reportLastMatch].
			currentCharacter == $T 
				ifTrue: 
					[self step.
					currentCharacter == $A 
						ifTrue: 
							[self step.
							currentCharacter == $T 
								ifTrue: 
									[self step.
									currentCharacter == $U 
										ifTrue: 
											[self step.
											currentCharacter == $S ifTrue: [^self recordAndReportMatch: #(37)].
											^self reportLastMatch].
									^self reportLastMatch].
							^self reportLastMatch].
					^self reportLastMatch].
			currentCharacter == $U 
				ifTrue: 
					[self step.
					currentCharacter == $M 
						ifTrue: 
							[self step.
							currentCharacter == $M 
								ifTrue: 
									[self step.
									currentCharacter == $A 
										ifTrue: 
											[self step.
											currentCharacter == $R 
												ifTrue: 
													[self step.
													currentCharacter == $Y ifTrue: [^self recordAndReportMatch: #(41)].
													^self reportLastMatch].
											^self reportLastMatch].
									^self reportLastMatch].
							^self reportLastMatch].
					^self reportLastMatch].
			^self reportLastMatch].
	currentCharacter == $T ifTrue: [^self scan12].
	currentCharacter == $U 
		ifTrue: 
			[self step.
			currentCharacter == $I 
				ifTrue: 
					[self step.
					currentCharacter == $D ifTrue: [^self recordAndReportMatch: #(42)].
					^self reportLastMatch].
			^self reportLastMatch].
	currentCharacter == $V 
		ifTrue: 
			[self step.
			currentCharacter == $E 
				ifTrue: 
					[self step.
					currentCharacter == $R 
						ifTrue: 
							[self step.
							currentCharacter == $S 
								ifTrue: 
									[self step.
									currentCharacter == $I 
										ifTrue: 
											[self step.
											currentCharacter == $O 
												ifTrue: 
													[self step.
													currentCharacter == $N ifTrue: [^self recordAndReportMatch: #(14)].
													^self reportLastMatch].
											^self reportLastMatch].
									^self reportLastMatch].
							^self reportLastMatch].
					^self reportLastMatch].
			^self reportLastMatch].
	currentCharacter == $X ifTrue: [^self scan8].
	^self reportLastMatch