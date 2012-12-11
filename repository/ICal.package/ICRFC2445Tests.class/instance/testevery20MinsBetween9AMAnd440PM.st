rfc2445-tests
testevery20MinsBetween9AMAnd440PM
	| schedule generatedDates days end |
	event addRecurrenceRule: self every20MinsBetween9AMAnd440PM.
	schedule := ICSchedule fromEvent: event.
	days := 2.
	end := event start + (self durationClass seconds: 86399 * days).
	generatedDates := schedule datesBetween: event start and: end.
	self assert: generatedDates size equals: 24 * days.
	generatedDates
		do: [ :eachDate | 
			self assert: eachDate minute \\ 20 equals: 0.
			self assert: eachDate hour > 8.
			self assert: eachDate hour < 17 ]