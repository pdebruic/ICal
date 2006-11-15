occurrences
occurrences: aNumber between: aStartDateAndTime and: anEndDateAndTime
	| dates startTS |
	
	self hasRecurrenceRules ifFalse: [ ^ self ].

	dates := OrderedCollection new.
	startTS := aStartDateAndTime > self start ifTrue: [ aStartDateAndTime ] ifFalse: [ self start ].
	
	self recurrenceRules do: [:rule|
		dates addAll: (self
			occurencesSelectNoRep: [ rule events: aNumber between: startTS and: anEndDateAndTime ]
			orCount: [ | count |
				count := aNumber < rule repetition ifTrue: [ aNumber ] ifFalse: [ rule repetition ].
				rule frequency dates: (rule events: count between: self start and: anEndDateAndTime)
					atOrAfter: aStartDateAndTime
			]
			orUntil: [ | endTS |
				endTS := anEndDateAndTime < rule repetition 
					ifTrue: [ anEndDateAndTime ] ifFalse: [ rule repetition ].
				rule events: aNumber between: startTS and: endTS
			]
			on: rule).
	].

	self recurrenceRules size > 1 ifTrue: [
		dates size = 0 ifTrue: [ ^ dates. ].
		dates := dates sortBy: [:l :r| l < r ].
		dates size > aNumber ifTrue: [ dates := dates copyFrom: 1 to: aNumber ].
	].
		
	^  dates collect: [ :e | self occurrenceFromDate: e ].