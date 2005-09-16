tests
remove: aString
	| eventsForCategory |
	category := calendar categoryWithTitle: aString.
	calendar removeCategory: category.
	eventsForCategory := calendar events select: [:event | event category = category ].
	eventsForCategory do: [:event | event category: nil].