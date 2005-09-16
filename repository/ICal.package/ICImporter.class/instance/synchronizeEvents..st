synchronizing
synchronizeEvents: aCollection
	
	self deleteEventsNotInFile: aCollection.
	self updateOrAddEventsInFile: aCollection.