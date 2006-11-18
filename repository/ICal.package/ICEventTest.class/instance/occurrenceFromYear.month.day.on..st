testing
occurrenceFromYear: aYear month: aMonth day: aDay on: anEvent

	^ anEvent occurrenceFromDate: (self dateClass year: aYear month: aMonth day: aDay).