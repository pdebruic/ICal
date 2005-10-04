creation
createTempEvent
	| event |
	event := ICEvent new.
	event type: event class eventType.
	event calendar: self calendar.
	self events add: event.
	self tempEvent: event