accessing
occurences: aNumber between: aStartTimeSpan and: anEndTimeSpan
	| dates startTS |
	
	self hasRecurrenceRules ifFalse: [ ^ self ].

	dates := OrderedCollection new.
	startTS := aStartTimeSpan > self start ifTrue: [ aStartTimeSpan ] ifFalse: [ self start ].
	
	self recurrenceRules do: [:rule|
		dates addAll: (self
			occurencesSelectNoRep: [ rule events: aNumber between: startTS and: anEndTimeSpan ]
			orCount: [ | count |
				count := aNumber < rule repetition ifTrue: [ aNumber ] ifFalse: [ rule repetition ].
				rule frequency dates: (rule events: count between: self start and: anEndTimeSpan)
					after: aStartTimeSpan
			]
			orUntil: [ | endTS |
				endTS := anEndTimeSpan < rule repetition 
					ifTrue: [ anEndTimeSpan ] ifFalse: [ rule repetition ].
				rule events: aNumber between: startTS and: endTS
			]
			on: rule).
	].

	self recurrenceRules size > 1 ifTrue: [
		dates size = 0 ifTrue: [ ^ dates. ].
		dates := dates sortBy: [:l :r| l < r ].
		dates size > aNumber ifTrue: [ dates := dates copyFrom: 1 to: aNumber ].
	].
		
	^  dates.