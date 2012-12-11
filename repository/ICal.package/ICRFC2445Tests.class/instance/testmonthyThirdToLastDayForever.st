rfc2445-tests
testmonthyThirdToLastDayForever
	| schedule generatedDates months end scheduleDuration |
	event addRecurrenceRule: self monthyThirdToLastDayForever.
	schedule := ICSchedule fromEvent: event.
	months := 20.
	scheduleDuration := self durationClass seconds: 86400 * months * 31.
	end := event start + scheduleDuration.
	generatedDates := schedule datesBetween: event start and: end.
	self assert: generatedDates size equals: months+1.
	generatedDates do: [ :eachDate | self assert: eachDate dayOfMonth equals: eachDate daysInMonth - 2 ]