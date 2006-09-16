rendering
status
	^ event status isNil
		ifTrue: ['']
		ifFalse: [event isConfirmed
				ifTrue: ['!']
				ifFalse: [event isTentative
						ifTrue: ['?']
						ifFalse: ['']]]