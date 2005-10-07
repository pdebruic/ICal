creation
createTempEvent
	| event |
	event := ICEvent new.
	event calendar: self calendar.
	self events add: event.
	self tempEvent: event