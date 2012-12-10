rfc2445-tests
testmonthyFirstFridayFor10
	| schedule generatedDates dates timespan end nextDate duration count |
	event addRecurrenceRule: self monthyFirstFridayFor10.
	schedule := ICSchedule fromEvent: event.
	dates := OrderedCollection new.
	count := 10.
	generatedDates := schedule dates.
	self assert: generatedDates size equals: count.
	generatedDates doWithIndex: [ :eachDate | self assert: eachDate dayOfWeek equals: 6 ]