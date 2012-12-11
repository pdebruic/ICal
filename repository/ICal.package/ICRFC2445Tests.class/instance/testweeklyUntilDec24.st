rfc2445-tests
testweeklyUntilDec24
	| schedule generatedDates dates timespan end nextDate duration count |
	event addRecurrenceRule: self weeklyUntilDec24.
	schedule := ICSchedule fromEvent: event.
	dates := OrderedCollection new.
	generatedDates := schedule dates.
	self assert: generatedDates size equals: 17.
	generatedDates do: [ :eachDate | self assert: eachDate dayOfWeek equals: event start dayOfWeek ]