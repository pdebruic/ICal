rfc2445-tests
testusPresidentialElectionDay
	| schedule generatedDates years end scheduleDuration |
	event addRecurrenceRule: self usPresidentialElectionDay.
	schedule := ICSchedule fromEvent: event.
	years := 20.
	scheduleDuration := self durationClass seconds: 86400 * years * 366.
	end := event start + scheduleDuration.
	generatedDates := schedule datesBetween: event start and: end.
	self assert: generatedDates size equals: years // 4 +1.
	generatedDates do: [ :eachDate | self assert: eachDate dayOfWeek equals: 3 ]