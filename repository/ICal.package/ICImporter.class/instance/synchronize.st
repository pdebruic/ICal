actions
synchronize
	self parseFile.

	"synchronize events with known ids"
	self synchronizeEvents: (self events select: [:item | item id ~= 0]).

	"add events with unknown ids"
	self events 
		do: [:event | event id = 0 ifTrue: [self addEventToCalendar: event]].