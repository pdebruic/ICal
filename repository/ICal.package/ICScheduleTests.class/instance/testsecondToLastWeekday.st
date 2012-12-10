rfc2445-tests
testsecondToLastWeekday
	| schedule generatedDates months end scheduleDuration |
	event addRecurrenceRule: self secondToLastWeekday.
	schedule := ICSchedule fromEvent: event.
	months := 20.
	scheduleDuration := self durationClass seconds: 86400 * months * 31.
	end := event start + scheduleDuration.
	generatedDates := schedule datesBetween: event start and: end.
	self assert: generatedDates size equals: months.
	generatedDates do: [ :eachDate | self assert: (#(2 3 4 5 6) includes: eachDate dayOfWeek) ]