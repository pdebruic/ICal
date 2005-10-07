synchronizing
updateOrAddEventsInFile: aCollection

	aCollection do: [:event | 
		(self calendar includesEventWithUid: event uid) 
			ifTrue: [(self calendar eventWithId: event uid) updateEventWith: event] 
			ifFalse: [self addEventToCalendar: event]
	].