defaults
defaultDay

	^ OrderedCollection new add: (ICRecurrenceRule possibleWeekdays at: dtstart dayOfWeek); yourself