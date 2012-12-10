rfc2445-tests
testweeklyFor10Count
	| schedule generatedDates dates timespan end nextDate duration count |
	event addRecurrenceRule: self weeklyFor10Count.
	schedule := ICSchedule fromEvent: event.
	dates := OrderedCollection new.
	count := 10.
	generatedDates := schedule dates.
	self assert: generatedDates size equals: count.
	generatedDates doWithIndex: [ :eachDate | self assert: eachDate dayOfWeek equals: event start dayOfWeek ]