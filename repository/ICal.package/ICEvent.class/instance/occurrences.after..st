accessing
occurrences: aNumber after: aTimeSpan
	| dates startTS |
	
	self hasRecurrenceRules ifFalse: [ ^ self ].		"What to do here?  Check if we are after?"
	
	dates := OrderedCollection new.
	startTS := aTimeSpan > self start ifTrue: [ aTimeSpan ] ifFalse: [ self start ].
	
	self recurrenceRules do: [:rule|
		dates addAll: (self
			occurencesSelectNoRep: [ rule events: aNumber after: startTS ]
			orCount: [ | count |
				count := aNumber < rule repetition ifTrue: [ aNumber ] ifFalse: [ rule repetition ].
				rule frequency dates: (rule events: count after: self start) after: aTimeSpan
			]
			orUntil: [ rule events: aNumber between: startTS and: rule repetition ]
			on: rule).
	].

	self recurrenceRules size > 1 ifTrue: [
		dates size = 0 ifTrue: [ ^ dates ].
		dates := dates sortBy: [:l :r| l < r ].
		dates size > aNumber ifTrue: [ dates := dates copyFrom: 1 to: aNumber ].
	].

	^ dates.