rfc2445-tests
testtuThEveryOtherWeekFor8
	| schedule generatedDates dates timespan end nextDate duration count |
	event addRecurrenceRule: self tuThEveryOtherWeekFor8.
	schedule := ICSchedule fromEvent: event.
	dates := OrderedCollection new.
	count := 8.
	generatedDates := schedule dates.
	self assert: generatedDates size equals: count.
	generatedDates doWithIndex: [ :eachDate | self assert: (#(3 5) includes: eachDate dayOfWeek) ]