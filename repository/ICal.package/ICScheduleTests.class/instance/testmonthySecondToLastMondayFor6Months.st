rfc2445-tests
testmonthySecondToLastMondayFor6Months
	| schedule generatedDates dates timespan end nextDate duration count |
	event addRecurrenceRule: self monthySecondToLastMondayFor6Months.
	schedule := ICSchedule fromEvent: event.
	dates := OrderedCollection new.
	generatedDates := schedule dates.
	self assert: generatedDates size equals: 6.
	generatedDates doWithIndex: [ :eachDate | self assert: eachDate dayOfWeek equals: 1 ]