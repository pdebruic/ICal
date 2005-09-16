synchronizing
updateOrAddEventsInFile: aCollection

	aCollection do: [:event | 
		(self calendar includesEventWithId: event id) 
			ifTrue: [(self calendar eventWithId: event id) updateEventWith: event] 
			ifFalse: [self addEventToCalendar: event]
	].