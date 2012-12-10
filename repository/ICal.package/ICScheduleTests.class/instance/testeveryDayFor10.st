rfc2445-tests
testeveryDayFor10
	| schedule dates |
	event addRecurrenceRule: self everyDayFor10.
	schedule := ICSchedule fromEvent: event.
	dates := (0 to: 9) collect: [ :each | event start + (self durationClass days: each )].
	schedule dates doWithIndex: [ :eachDate :index | self assert: eachDate equals: (dates at: index) ]