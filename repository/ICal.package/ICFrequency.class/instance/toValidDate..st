validating
toValidDate: aDateAndTime

	^ interval = 1
		ifTrue: [ aDateAndTime ]
		ifFalse: [ self findValidDate: aDateAndTime ]

	"NOTE: At first it may look like returning the given date on interval 1 wont work, since aDateAndTime
			could be incompatible with dtstart.  But it works because everything below the frequency level
			comes from a filter rule or dtstart anyway.

			e.g. If dtstart is '2006-09-15T05:15:30' and aDateAndTime is '2007-03-02T01:30:00' then on a monthly
			frequency with interval 1 and no filters, the sequence would be:
			#( '2007-03-15T05:15:30' '2007-04-15T05:15:30' ...).  Clearly this would have been reached had we
			started with dtstart."