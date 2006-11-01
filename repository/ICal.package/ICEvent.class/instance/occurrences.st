accessing
occurrences
	| dates |
	
	self hasRecurrenceRules ifFalse: [ ^ self ].
	
	dates := OrderedCollection new.
	
	self recurrenceRules do: [:rule|
		dates addAll: (self
			occurencesSelectNoRep: [ self error: 'infinite occurences set' ]
			orCount: [ rule events: rule repetition after: self start ]
			orUntil: [ rule eventsBetween: self start and: rule repetition ]
			on: rule).
	].

	self recurrenceRules size > 1 ifTrue: [ dates := dates sortBy: [:l :r| l < r ] ].
	^ dates.