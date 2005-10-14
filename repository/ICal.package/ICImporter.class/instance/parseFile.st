actions
parseFile
	| importedCalendar |
	importedCalendar := ICCalendarParser2 parseCalendarString: self fileContent.
	self components: importedCalendar components