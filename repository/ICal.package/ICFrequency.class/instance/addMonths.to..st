private
addMonths: aNumber to: aDateAndTime
	
	^ DateAndTime date: (aDateAndTime asDate addMonths: aNumber) time: (aDateAndTime asTime)