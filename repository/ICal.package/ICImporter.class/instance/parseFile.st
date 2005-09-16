actions
parseFile
	| parser |
	parser := ICCalendarParser parse: self fileContent for: self calendar.
	self events: parser events