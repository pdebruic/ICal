synchronizing
deleteEventsNotInFile: aCollection

	| ids |
	ids := self calendar events collect: [:event | event id].
	aCollection do: [:event | ids remove: event id ifAbsent: [nil]].
	
	ids do: [:id | self calendar removeEventWithId: id].