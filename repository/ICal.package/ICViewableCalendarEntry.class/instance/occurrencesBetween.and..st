occurrences
occurrencesBetween: aStartDateAndTime and: anEndDateAndTime
	| dates startTS |
	
	self hasRecurrenceRules ifFalse: [ ^ self ].

	dates := OrderedCollection new.
	startTS := aStartDateAndTime > self start ifTrue: [ aStartDateAndTime ] ifFalse: [ self start ].
	
	self recurrenceRules do: [:rule|
		dates addAll: (self
			occurencesSelectNoRep: [ rule eventsBetween: startTS and: anEndDateAndTime ]
			orCount: [ 
				rule frequency
					dates: (rule events: rule repetition between: self start and: anEndDateAndTime)
					atOrAfter: aStartDateAndTime
			]
			orUntil: [ | endTS |
				endTS := anEndDateAndTime < rule repetition 
					ifTrue: [ anEndDateAndTime ] ifFalse: [ rule repetition ].
				rule eventsBetween: startTS and: endTS
			]
			on: rule).
	].

	self recurrenceRules size > 1
		ifTrue: [
			dates size = 0 ifTrue: [ ^ dates. ].
			dates := dates sortBy: [:l :r| l < r ]
		].
		
	^  dates collect: [ :e | self occurrenceFromDate: e ].