rfc2445-tests
testmonthySecondAndFifteenthFor10
	| schedule generatedDates dates timespan end nextDate duration count |
	event addRecurrenceRule: self monthySecondAndFifteenthFor10.
	schedule := ICSchedule fromEvent: event.
	dates := OrderedCollection new.
	count := 10.
	generatedDates := schedule dates.
	self assert: generatedDates size equals: count * 2.
	generatedDates do: [ :eachDate | self assert: (#(2 15) includes: eachDate dayOfMonth) ]