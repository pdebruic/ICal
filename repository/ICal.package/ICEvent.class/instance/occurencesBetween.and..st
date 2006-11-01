accessing
occurencesBetween: aStartTimeSpan and: anEndTimeSpan
	| dates startTS |
	
	self hasRecurrenceRules ifFalse: [ ^ self ].

	dates := OrderedCollection new.
	startTS := aStartTimeSpan > self start ifTrue: [ aStartTimeSpan ] ifFalse: [ self start ].
	
	self recurrenceRules do: [:rule|
		dates addAll: (self
			occurencesSelectNoRep: [ rule eventsBetween: startTS and: anEndTimeSpan ]
			orCount: [ 
				rule frequency
					dates: (rule events: rule repetition between: self start and: anEndTimeSpan)
					after: aStartTimeSpan
			]
			orUntil: [ | endTS |
				endTS := anEndTimeSpan < rule repetition 
					ifTrue: [ anEndTimeSpan ] ifFalse: [ rule repetition ].
				rule eventsBetween: startTS and: endTS
			]
			on: rule).
	].

	self recurrenceRules size > 1
		ifTrue: [
			dates size = 0 ifTrue: [ ^ dates. ].
			dates := dates sortBy: [:l :r| l < r ]
		].
		
	^  dates.