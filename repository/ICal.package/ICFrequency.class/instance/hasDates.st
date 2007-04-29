testing
hasDates

	^ (yeardays notEmpty 
		or: [ monthdays notEmpty 
		or: [ weekdays notEmpty
		or: [ daysAndOccurrences notEmpty ] ] ])