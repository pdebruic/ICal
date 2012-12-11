rfc2445-tests
testevery15MinsFor6
	| schedule dates timespan end nextDate duration count |
	event addRecurrenceRule: self every15MinsFor6.
	schedule := ICSchedule fromEvent: event.
	dates := OrderedCollection new.
	nextDate := event start.
	count := 6.
	duration := self durationClass seconds: 60 * 15.
	end := nextDate + (duration * count).
	[ nextDate < end ]
		whileTrue: [ 
			dates add: nextDate.
			nextDate := nextDate + duration ].
	schedule dates doWithIndex: [ :eachDate :index | self assert: eachDate equals: (dates at: index) ]