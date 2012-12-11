rfc2445-tests
testmonthyFirstAndLastDayFor10
	| schedule generatedDates dates timespan end nextDate duration count |
	event addRecurrenceRule: self monthyFirstAndLastDayFor10.
	schedule := ICSchedule fromEvent: event.
	dates := OrderedCollection new.
	count := 10.
	generatedDates := schedule dates.
	self assert: generatedDates size equals: count *2.
	generatedDates
		do: [ :eachDate | self assert: (eachDate dayOfMonth = 1 or: [ eachDate dayOfMonth = eachDate daysInMonth ]) ]