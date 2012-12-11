rfc2445-tests
testweekStartTest2
	| schedule generatedDates dates timespan end nextDate duration count |
	event addRecurrenceRule: self weekStartTest2.
	schedule := ICSchedule fromEvent: event.
	dates := OrderedCollection new.
	count := 8.
	generatedDates := schedule dates.
	self assert: generatedDates size equals: count.
	generatedDates do: [ :eachDate | self assert: (#(3 1) includes: eachDate dayOfWeek) ]