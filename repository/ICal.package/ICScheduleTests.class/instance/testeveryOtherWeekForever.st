rfc2445-tests
testeveryOtherWeekForever
	| schedule generatedDates weeks end scheduleDuration |
	event addRecurrenceRule: self everyOtherWeekForever.
	schedule := ICSchedule fromEvent: event.
	weeks := 20.
	scheduleDuration := self durationClass seconds: 86400 * 7 * weeks.
	end := event start + scheduleDuration.
	generatedDates := schedule datesBetween: event start and: end.
	self assert: generatedDates size equals: weeks.
	self assert: (generatedDates last - generatedDates first) / weeks equals: scheduleDuration / weeks