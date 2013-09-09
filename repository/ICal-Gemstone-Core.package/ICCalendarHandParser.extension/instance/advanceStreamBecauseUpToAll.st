*ical-gemstone-core
advanceStreamBecauseUpToAll
	self stream atEnd ifFalse:[self stream next.
		self stream atEnd ifFalse:[self stream next]].