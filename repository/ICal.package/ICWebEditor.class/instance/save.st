call/answer
save
	event event
		summary: (summary = ''
				ifTrue: ['no title']
				ifFalse: [summary]).
	event event
		location: (location = ''
				ifTrue: ['no location']
				ifFalse: [location]).
	event event
		start: (DateAndTime date: miniCalendar date time: start).
	event event
		end: (DateAndTime date: miniCalendar date time: end).
	"event parent calendar renderCalendarListOn: target."
	event calendar = calendar
		ifFalse: [event moveToCalendar: calendar].
	event event priority: priority.
	event event status: status.
	^ self answer