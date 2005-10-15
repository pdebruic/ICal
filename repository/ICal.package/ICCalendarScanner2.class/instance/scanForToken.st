generated-scanner
scanForToken
	self recordMatch: #(7 9).
	self step.
	(currentCharacter == $	 or: 
			[(currentCharacter between: $  and: $!) or: 
					[(currentCharacter between: $# and: $+) or: 
							[(currentCharacter between: $- and: $/) or: 
									[currentCharacter == $< or: 
											[(currentCharacter between: $> and: $@) or: 
													[(currentCharacter between: $[ and: $`) or: 
															[(currentCharacter between: ${ and: $~) 
																or: [currentCharacter between: $ and: $ø]]]]]]]]) 
		ifTrue: [^self scan1].
	(currentCharacter isDigit or: 
			[(currentCharacter between: $A and: $Z) 
				or: [currentCharacter between: $a and: $z]]) 
		ifTrue: 
			[
			[self recordMatch: #(5 7 9 10).
			self step.
			(currentCharacter == $	 or: 
					[(currentCharacter between: $  and: $!) or: 
							[(currentCharacter between: $# and: $+) or: 
									[(currentCharacter between: $- and: $/) or: 
											[(currentCharacter between: $< and: $@) or: 
													[(currentCharacter between: $[ and: $`) or: 
															[(currentCharacter between: ${ and: $~) 
																or: [currentCharacter between: $ and: $ø]]]]]]]) 
				ifTrue: [^self scan1].
			currentCharacter isDigit or: 
					[(currentCharacter between: $A and: $Z) 
						or: [currentCharacter between: $a and: $z]]] 
					whileTrue.
			(currentCharacter == $, or: [currentCharacter between: $: and: $;]) 
				ifTrue: 
					[
					[self recordMatch: #(9).
					self step.
					currentCharacter == $	 or: 
							[(currentCharacter between: $  and: $~) 
								or: [currentCharacter between: $ and: $ø]]] 
							whileTrue.
					^self reportLastMatch].
			currentCharacter == $" ifTrue: [^self scan5].
			^self reportLastMatch].
	currentCharacter == $
 
		ifTrue: 
			[self step.
			currentCharacter == $ ifTrue: [^self recordAndReportMatch: #(4)].
			^self reportLastMatch].
	currentCharacter == $" 
		ifTrue: 
			[self recordMatch: #(9).
			self step.
			(currentCharacter == $	 or: 
					[(currentCharacter between: $  and: $!) or: 
							[(currentCharacter between: $# and: $,) or: 
									[(currentCharacter between: $. and: $W) or: 
											[(currentCharacter between: $Y and: $w) or: 
													[(currentCharacter between: $y and: $~) 
														or: [currentCharacter between: $ and: $ø]]]]]]) 
				ifTrue: [^self scan2].
			(currentCharacter == $X or: [currentCharacter == $x]) 
				ifTrue: 
					[self recordMatch: #(9).
					self step.
					(currentCharacter == $	 or: 
							[(currentCharacter between: $  and: $!) or: 
									[(currentCharacter between: $# and: $,) or: 
											[(currentCharacter between: $. and: $~) 
												or: [currentCharacter between: $ and: $ø]]]]) 
						ifTrue: [^self scan2].
					currentCharacter == $" ifTrue: [^self scan3].
					currentCharacter == $- 
						ifTrue: 
							[self recordMatch: #(9).
							self step.
							(currentCharacter == $	 or: 
									[(currentCharacter between: $  and: $!) or: 
											[(currentCharacter between: $# and: $~) 
												or: [currentCharacter between: $ and: $ø]]]) 
								ifTrue: [^self scan2].
							currentCharacter == $" 
								ifTrue: 
									[self recordMatch: #(8 9 10).
									self step.
									(currentCharacter == $	 or: 
											[currentCharacter == $! or: 
													[(currentCharacter between: $# and: $/) or: 
															[(currentCharacter between: $: and: $;) or: 
																	[currentCharacter == $= or: 
																			[(currentCharacter between: $? and: $@) or: 
																					[(currentCharacter between: $[ and: $`) or: 
																							[(currentCharacter between: ${ and: $~) 
																								or: [currentCharacter between: $ and: $ø]]]]]]]]) 
										ifTrue: 
											[
											[self recordMatch: #(9).
											self step.
											currentCharacter == $	 or: 
													[(currentCharacter between: $  and: $~) 
														or: [currentCharacter between: $ and: $ø]]] 
													whileTrue.
											^self reportLastMatch].
									(currentCharacter isDigit or: 
											[(currentCharacter between: $A and: $Z) 
												or: [currentCharacter between: $a and: $z]]) 
										ifTrue: [^self scan6].
									(currentCharacter == $  
										or: [currentCharacter == $< or: [currentCharacter == $>]]) 
											ifTrue: 
												[self recordMatch: #(9).
												self step.
												(currentCharacter == $	 or: 
														[(currentCharacter between: $  and: $!) or: 
																[(currentCharacter between: $# and: $/) or: 
																		[(currentCharacter between: $: and: $@) or: 
																				[(currentCharacter between: $[ and: $`) or: 
																						[(currentCharacter between: ${ and: $~) 
																							or: [currentCharacter between: $ and: $ø]]]]]]) 
													ifTrue: 
														[
														[self recordMatch: #(9).
														self step.
														currentCharacter == $	 or: 
																[(currentCharacter between: $  and: $~) 
																	or: [currentCharacter between: $ and: $ø]]] 
																whileTrue.
														^self reportLastMatch].
												(currentCharacter isDigit or: 
														[(currentCharacter between: $A and: $Z) 
															or: [currentCharacter between: $a and: $z]]) 
													ifTrue: [^self scan6].
												currentCharacter == $" ifTrue: [^self scan7].
												^self reportLastMatch].
									currentCharacter == $" 
										ifTrue: 
											[self recordMatch: #(9).
											self step.
											(currentCharacter == $	 or: 
													[(currentCharacter between: $  and: $!) or: 
															[(currentCharacter between: $# and: $,) or: 
																	[(currentCharacter between: $. and: $/) or: 
																			[(currentCharacter between: $: and: $@) or: 
																					[(currentCharacter between: $[ and: $`) or: 
																							[(currentCharacter between: ${ and: $~) 
																								or: [currentCharacter between: $ and: $ø]]]]]]]) 
												ifTrue: 
													[
													[self recordMatch: #(9).
													self step.
													currentCharacter == $	 or: 
															[(currentCharacter between: $  and: $~) 
																or: [currentCharacter between: $ and: $ø]]] 
															whileTrue.
													^self reportLastMatch].
											(currentCharacter isDigit or: 
													[(currentCharacter between: $A and: $Z) 
														or: [currentCharacter between: $a and: $z]]) 
												ifTrue: [^self scan6].
											currentCharacter == $" ifTrue: [^self scan7].
											currentCharacter == $- ifTrue: [^self scan8].
											^self reportLastMatch].
									^self reportLastMatch].
							^self reportLastMatch].
					^self reportLastMatch].
			currentCharacter == $" ifTrue: [^self scan3].
			currentCharacter == $- 
				ifTrue: 
					[self recordMatch: #(9).
					self step.
					(currentCharacter == $	 or: 
							[(currentCharacter between: $  and: $!) or: 
									[(currentCharacter between: $# and: $~) 
										or: [currentCharacter between: $ and: $ø]]]) 
						ifTrue: [^self scan2].
					currentCharacter == $" 
						ifTrue: 
							[self recordMatch: #(5 8 9 10).
							self step.
							(currentCharacter == $	 or: 
									[(currentCharacter between: $  and: $!) or: 
											[(currentCharacter between: $# and: $/) or: 
													[(currentCharacter between: $: and: $@) or: 
															[(currentCharacter between: $[ and: $`) or: 
																	[(currentCharacter between: ${ and: $~) 
																		or: [currentCharacter between: $ and: $ø]]]]]]) 
								ifTrue: 
									[
									[self recordMatch: #(9).
									self step.
									currentCharacter == $	 or: 
											[(currentCharacter between: $  and: $~) 
												or: [currentCharacter between: $ and: $ø]]] 
											whileTrue.
									^self reportLastMatch].
							(currentCharacter isDigit or: 
									[(currentCharacter between: $A and: $Z) 
										or: [currentCharacter between: $a and: $z]]) 
								ifTrue: [^self scan4].
							currentCharacter == $" ifTrue: [^self scan5].
							^self reportLastMatch].
					^self reportLastMatch].
			^self reportLastMatch].
	currentCharacter == $, 
		ifTrue: 
			[
			[self recordMatch: #(9).
			self step.
			currentCharacter == $	 or: 
					[(currentCharacter between: $  and: $~) 
						or: [currentCharacter between: $ and: $ø]]] 
					whileTrue.
			^self reportLastMatch].
	currentCharacter == $: 
		ifTrue: 
			[self recordMatch: #(1 9).
			self step.
			(currentCharacter == $	 or: 
					[(currentCharacter between: $  and: $~) 
						or: [currentCharacter between: $ and: $ø]]) 
				ifTrue: 
					[
					[self recordMatch: #(9).
					self step.
					currentCharacter == $	 or: 
							[(currentCharacter between: $  and: $~) 
								or: [currentCharacter between: $ and: $ø]]] 
							whileTrue.
					^self reportLastMatch].
			^self reportLastMatch].
	currentCharacter == $; 
		ifTrue: 
			[self recordMatch: #(2 9).
			self step.
			(currentCharacter == $	 or: 
					[(currentCharacter between: $  and: $~) 
						or: [currentCharacter between: $ and: $ø]]) 
				ifTrue: 
					[
					[self recordMatch: #(9).
					self step.
					currentCharacter == $	 or: 
							[(currentCharacter between: $  and: $~) 
								or: [currentCharacter between: $ and: $ø]]] 
							whileTrue.
					^self reportLastMatch].
			^self reportLastMatch].
	currentCharacter == $= 
		ifTrue: 
			[self recordMatch: #(3 7 9).
			self step.
			(currentCharacter == $	 or: 
					[(currentCharacter between: $  and: $!) or: 
							[(currentCharacter between: $# and: $+) or: 
									[(currentCharacter between: $- and: $9) or: 
											[(currentCharacter between: $< and: $~) 
												or: [currentCharacter between: $ and: $ø]]]]]) 
				ifTrue: [^self scan1].
			(currentCharacter == $" 
				or: [currentCharacter == $, or: [currentCharacter between: $: and: $;]]) 
					ifTrue: 
						[
						[self recordMatch: #(9).
						self step.
						currentCharacter == $	 or: 
								[(currentCharacter between: $  and: $~) 
									or: [currentCharacter between: $ and: $ø]]] 
								whileTrue.
						^self reportLastMatch].
			^self reportLastMatch].
	^self reportLastMatch