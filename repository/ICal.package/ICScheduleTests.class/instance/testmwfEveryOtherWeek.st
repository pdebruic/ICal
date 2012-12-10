rfc2445-tests
testmwfEveryOtherWeek
	| schedule generatedDates dates timespan end nextDate duration count |
	event addRecurrenceRule: self mwfEveryOtherWeek.
	schedule := ICSchedule fromEvent: event.
	dates := OrderedCollection new.
	generatedDates := schedule dates.
	self assert: generatedDates size equals: 12.
	generatedDates doWithIndex: [ :eachDate | self assert: (#(2 4 6) includes: eachDate dayOfWeek) ]