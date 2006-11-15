private
byDayFor: aDateAndTime
	| days |
	
	days := OrderedCollection new.
	
	weekdays do: [:e| | day |
		e class name = #Association
			ifTrue: [ 
				day := ICRecurrenceRule possibleWeekdays indexOf: e key.
				day := self byDay: day for: aDateAndTime at: e value.
				day ifNotNil: [ days add: day ].
			]
			ifFalse: [
				days addAll: (self byDay: (ICRecurrenceRule possibleWeekdays indexOf: e) for: aDateAndTime).
			].
	].
	"Todo: Needs a sort here I think"
	^ days.