rfc2445-tests
testusPresidentialElectionDay
	| schedule generatedDates months end scheduleDuration |
	event addRecurrenceRule: self usPresidentialElectionDay.
	schedule := ICSchedule fromEvent: event.
	months := 20.
	scheduleDuration := self durationClass seconds: 86400 * months * 366.
	end := event start + scheduleDuration.
	generatedDates := schedule datesBetween: event start and: end.
	self assert: generatedDates size equals: months \\ 4.
	generatedDates do: [ :eachDate | self assert: eachDate dayOfWeek equals: 3 ]