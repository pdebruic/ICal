creation
createTempEvent
	| event |
	event := ICAppointment new.
	event type: event class eventType.
	event calendar: self calendar.
	self events add: event.
	self tempEvent: event