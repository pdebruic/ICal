actions
synchronize
	self parseFile.

	"synchronize events with known ids"
	self synchronizeEvents: (self events select: [:item | item uid ~= 0 and: [ item uid notNil ]]).

	"add events with unknown ids"
	self events 
		do: [:event | event uid = 0 ifTrue: [self addEventToCalendar: event]].