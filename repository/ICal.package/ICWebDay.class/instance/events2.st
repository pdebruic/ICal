accessing
events2
	"will probably be obsolete soon"
	| date2 foo |
	date2 := date asDate.
	foo := OrderedCollection new.
	app calendars keys
				do: [:cal | foo addAll: (cal eventsForDate: date2)].
	^ foo
		collect: [:evt | self event: evt]