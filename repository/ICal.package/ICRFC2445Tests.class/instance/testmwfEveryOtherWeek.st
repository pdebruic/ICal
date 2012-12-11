rfc2445-tests
testmwfEveryOtherWeek
	| schedule generatedDates dates timespan end nextDate duration count |
	event addRecurrenceRule: self mwfEveryOtherWeek.
	schedule := ICSchedule fromEvent: event.
	dates := OrderedCollection new.
	generatedDates := schedule dates.
	generatedDates do: [ :eachDate | self assert: (#(#Monday #Wednesday #Friday) includes: eachDate dayOfWeekName) ].
	self assert: generatedDates size equals: 27.
	