generated-scanner
scan32
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
							currentCharacter == $E 
								ifTrue: 
									[self step.
									currentCharacter == $N 
										ifTrue: 
											[self step.
											currentCharacter == $D 
												ifTrue: 
													[self step.
													currentCharacter == $A 
														ifTrue: 
															[self step.
															currentCharacter == $R ifTrue: [^self recordAndReportMatch: #(15)].
															^self reportLastMatch].
													^self reportLastMatch].
											^self reportLastMatch].
									^self reportLastMatch].
							^self reportLastMatch].
					^self reportLastMatch].
			^self reportLastMatch].
	currentCharacter == $E 
		ifTrue: 
			[self step.
			currentCharacter == $V 
				ifTrue: 
					[self step.
					currentCharacter == $E 
						ifTrue: 
							[self step.
							currentCharacter == $N 
								ifTrue: 
									[self step.
									currentCharacter == $T ifTrue: [^self recordAndReportMatch: #(31)].
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
															currentCharacter == $E ifTrue: [^self recordAndReportMatch: #(10)].
															^self reportLastMatch].
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
							currentCharacter == $O ifTrue: [^self recordAndReportMatch: #(40)].
							^self reportLastMatch].
					^self reportLastMatch].
			^self reportLastMatch].
	^self reportLastMatch