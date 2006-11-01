initialization
initialize2
	summary := event event summary.
	location := event event location.
	priority := event event priority.
	miniCalendar := ICWebMiniCalendar new date: event event start asDate.
miniCalendar2 := ICWebMiniCalendar new date: event event end asDate.
	calendar := event calendar.
	start := event event start asTime.
	end := event event end asTime.
	status := event event status isNil
				ifTrue: ['']
				ifFalse: [event event status].
