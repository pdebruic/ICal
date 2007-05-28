validating
findValidDate: dt
	|monthsToAdd|
	
	monthsToAdd := dt month - dtstart month + (dt year - dtstart year * 12).

	^ self addMonths: monthsToAdd - (monthsToAdd \\ interval) to: dtstart