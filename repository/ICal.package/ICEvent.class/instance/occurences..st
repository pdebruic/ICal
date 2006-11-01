accessing
occurences: aNumber
	| dates |
	
	self hasRecurrenceRules ifFalse: [ ^ self ].
	
	dates := OrderedCollection new.
	
	self recurrenceRules do: [:rule|
		dates addAll: (self
			occurencesSelectNoRep: [rule events: aNumber after: self start ]
			orCount: [ | count |
				count := aNumber < rule repetition ifTrue: [ aNumber ] ifFalse: [ rule repetition ].
				rule events: count after: self start
			]
			orUntil: [ rule events: aNumber between: self start and: rule repetition ]
			on: rule).
	].

	self recurrenceRules size > 1 ifTrue: [
		dates := dates sortBy: [:l :r| l < r ].
		dates size > aNumber ifTrue: [ dates := dates copyFrom: 1 to: aNumber ].
	].
	^ dates.