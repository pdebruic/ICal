actions
updateEventWith: anEventOrCommand 
	| dtStart dtEnd date |
	super updateEventWith: anEventOrCommand.

	self startDateAndTime: anEventOrCommand startDateAndTime.
	self endDateAndTime: anEventOrCommand endDateAndTime.

	anEventOrCommand isFullDayEvent ifTrue: [
		date := anEventOrCommand startDateAndTime asDate.
		dtStart :=  DateAndTime date: date time: (Time hour: 0 minute: 0 second: 0).
		dtEnd := DateAndTime date: date time: (Time hour: 23 minute: 59 second: 59).
		self startDateAndTime: dtStart.
		self endDateAndTime: dtEnd.
	].

	self type: anEventOrCommand type.
	self place: anEventOrCommand place.