private - generators
periods
	"NOTE: The #eventsStartAt: method takes a start date and then seems to ignore it.  The reason
			this is; the methods in ICRecurrenceRule pick the date to start at, but they don't
			verify that the date would occur in the period generator.  Depending on the interval
			setting, this could cause completely false data to be produced.  For now we just hardcode
			the start date to dtstart to be sure.  Later each frequency should provide a #toValidDate:
			method to allow ICRecurrenceRule to give the date it wants and get back a date that would
			occur in the set so that the search can start there instead of the beginning"

	^ self periodsFrom: dtstart