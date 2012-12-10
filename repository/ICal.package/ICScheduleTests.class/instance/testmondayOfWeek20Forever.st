rfc2445-tests
testmondayOfWeek20Forever
	| schedule generatedDates years end scheduleDuration |
	event addRecurrenceRule: self mondayOfWeek20Forever.
	schedule := ICSchedule fromEvent: event.
	years := 20.
	scheduleDuration := self durationClass seconds: 86400 * years * 365.
	end := event start + scheduleDuration.
	generatedDates := schedule datesBetween: event start and: end.
	self assert: generatedDates size equals: years.
	generatedDates
		do: [ :eachDate | 
			self assert: eachDate dayOfWeek equals: 1.
			self assert: eachDate weekOfYear equals: 20 ]