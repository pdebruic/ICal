accessing
occurrencesAfter: aTimeSpan
	| dates startTS |
	
	self hasRecurrenceRules ifFalse: [ ^ self ].		"What to do here?  Check if we are after?"
	
	dates := OrderedCollection new.
	startTS := aTimeSpan > self start ifTrue: [ aTimeSpan ] ifFalse: [ self start ].
	
	self recurrenceRules do: [:rule|
		dates addAll: (self
			occurencesSelectNoRep: [ self error: 'infinite occurences set' ]
			orCount: [ rule frequency dates: (rule events: rule repetition after: self start) after: aTimeSpan ]
			orUntil: [ rule eventsBetween: startTS and: rule repetition ]
			on: rule).
	].

	self recurrenceRules size > 1
		ifTrue: [
			dates size = 0 ifTrue: [ ^dates ].
			dates := dates sortBy: [:l :r| l < r ]
		].

	^ dates.