rfc2445-tests
testeveryOtherDayForever
	| schedule generatedDates days end scheduleDuration |
	event addRecurrenceRule: self everyOtherDayForever.
	schedule := ICSchedule fromEvent: event.
	days := 20.
	scheduleDuration := self durationClass seconds: 86400 * days.
	end := event start + scheduleDuration.
	generatedDates := schedule datesBetween: event start and: end.
	self assert: generatedDates size equals: days.
	self assert: (generatedDates last - generatedDates first) / days equals: scheduleDuration / days