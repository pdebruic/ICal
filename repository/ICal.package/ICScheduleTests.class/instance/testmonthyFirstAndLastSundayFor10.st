rfc2445-tests
testmonthyFirstAndLastSundayFor10
	| schedule generatedDates dates timespan end nextDate duration count |
	event addRecurrenceRule: self monthyFirstAndLastSundayFor10.
	schedule := ICSchedule fromEvent: event.
	dates := OrderedCollection new.
	count := 10.
	generatedDates := schedule dates.
	self assert: generatedDates size equals: count * 2.
	generatedDates doWithIndex: [ :eachDate | self assert: eachDate dayOfWeek equals: 1 ]