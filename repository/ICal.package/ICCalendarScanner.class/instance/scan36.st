generated-scanner
scan36
	self step.
	currentCharacter == $C 
		ifTrue: 
			[self step.
			currentCharacter == $A 
				ifTrue: 
					[self step.
					currentCharacter == $L 
						ifTrue: 
							[self step.
							currentCharacter == $N 
								ifTrue: 
									[self step.
									currentCharacter == $A 
										ifTrue: 
											[self step.
											currentCharacter == $M 
												ifTrue: 
													[self step.
													currentCharacter == $E ifTrue: [^self recordAndReportMatch: #(13)].
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
					currentCharacter == $L 
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
													currentCharacter == $I 
														ifTrue: 
															[self step.
															currentCharacter == $D ifTrue: [^self recordAndReportMatch: #(17)].
															^self reportLastMatch].
													^self reportLastMatch].
											^self reportLastMatch].
									^self reportLastMatch].
							^self reportLastMatch].
					^self reportLastMatch].
			^self reportLastMatch].
	currentCharacter == $T 
		ifTrue: 
			[self step.
			currentCharacter == $I 
				ifTrue: 
					[self step.
					currentCharacter == $M 
						ifTrue: 
							[self step.
							currentCharacter == $E 
								ifTrue: 
									[self step.
									currentCharacter == $Z 
										ifTrue: 
											[self step.
											currentCharacter == $O 
												ifTrue: 
													[self step.
													currentCharacter == $N 
														ifTrue: 
															[self step.
															currentCharacter == $E ifTrue: [^self recordAndReportMatch: #(22)].
															^self reportLastMatch].
													^self reportLastMatch].
											^self reportLastMatch].
									^self reportLastMatch].
							^self reportLastMatch].
					^self reportLastMatch].
			^self reportLastMatch].
	^self reportLastMatch