rfc2445-tests
testeveryThirdYearOnTheFirstHundrethTwoHundrethDayFor10
	| schedule generatedDates dates timespan end nextDate duration count |
	event addRecurrenceRule: self everyThirdYearOnTheFirstHundrethTwoHundrethDayFor10.
	schedule := ICSchedule fromEvent: event.
	dates := OrderedCollection new.
	count := 10.
	generatedDates := schedule dates.
	self assert: generatedDates size equals: count * 3.
	generatedDates doWithIndex: [ :eachDate | self assert: (#(1 100 200) includes: eachDate dayOfYear) ]