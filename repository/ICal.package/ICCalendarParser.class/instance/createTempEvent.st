creation
createTempEvent
	| event |
	event := ICEvent new.
	self events add: event.
	self tempEvent: event