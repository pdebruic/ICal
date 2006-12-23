private
weekStartYearDatesFor: aMonth
	^ self allDaysOf: (self dayIndexOf: (weekStartday ifNil: [ 'MO' ])) inYearOf: aMonth