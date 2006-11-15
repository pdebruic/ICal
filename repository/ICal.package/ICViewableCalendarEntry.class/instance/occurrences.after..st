occurrences
occurrences: aNumber after: aDateAndTime
	| dates startTS |
	
	self hasRecurrenceRules ifFalse: [ ^ self ].		"What to do here?  Check if we are after?"
	
	dates := OrderedCollection new.
	startTS := aDateAndTime > self start ifTrue: [ aDateAndTime ] ifFalse: [ self start ].
	
	self recurrenceRules do: [:rule|
		dates addAll: (self
			occurencesSelectNoRep: [ rule events: aNumber after: startTS ]
			orCount: [ | count |
				count := aNumber < rule repetition ifTrue: [ aNumber ] ifFalse: [ rule repetition ].
				rule frequency dates: (rule events: count after: self start) atOrAfter: aDateAndTime
			]
			orUntil: [ rule events: aNumber between: startTS and: rule repetition ]
			on: rule).
	].

	self recurrenceRules size > 1 ifTrue: [
		dates size = 0 ifTrue: [ ^ dates ].
		dates := dates sortBy: [:l :r| l < r ].
		dates size > aNumber ifTrue: [ dates := dates copyFrom: 1 to: aNumber ].
	].

	^ dates collect: [ :e | self occurrenceFromDate: e ].