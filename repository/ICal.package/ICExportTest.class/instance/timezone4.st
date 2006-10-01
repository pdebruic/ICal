private
timezone4
	| timezone standard daylight |
	timezone := ICTimezone new.
	
	timezone := ICTimezone new.
	timezone id: 'US--Fictitious-Eastern'.
	timezone lastModified: (DateAndTime year: 1987 month: 01 day:  01).
	
	standard := ICStandardTime new.
	standard start: (DateAndTime year: 1967 month: 10 day: 29 hour: 02 minute: 00).
	standard addRecurrenceRule: (ICRecurrenceRule yearly
		addWeekday: 'SU' occurrence: -1;
		addMonthnumber: 10;
		yourself).
	standard offsetFrom: (ICUtcOffset new positive: false; hours: 4; yourself).
	standard offsetTo: (ICUtcOffset new positive: false; hours: 5; yourself).
	standard addName: 'EST'.
	timezone addStandardTime: standard.
	
	daylight := ICDaylightSavingTime new.
	daylight start: (DateAndTime year: 1987 month: 04 day: 05 hour: 02 minute: 00).
	daylight addRecurrenceRule: (ICRecurrenceRule yearly
		addWeekday: 'SU' occurrence: 1;
		addMonthnumber: 4;
		until: (DateAndTime year: 1998 month: 04 day: 04 hour: 07 minute: 00);
		yourself).
	daylight offsetFrom: (ICUtcOffset new positive: false; hours: 5; yourself).
	daylight offsetTo: (ICUtcOffset new positive: false; hours: 4; yourself).
	daylight addName: 'EDT'.
	timezone addDaylightSavingTime: daylight.
	
	daylight := ICDaylightSavingTime new.
	daylight start: (DateAndTime year: 1999 month: 04 day: 24 hour: 02 minute: 00).
	daylight addRecurrenceRule: (ICRecurrenceRule yearly
		addWeekday: 'SU' occurrence: -1;
		addMonthnumber: 4;
		yourself).
	daylight offsetFrom: (ICUtcOffset new positive: false; hours: 5; yourself).
	daylight offsetTo: (ICUtcOffset new positive: false; hours: 4; yourself).
	daylight addName: 'EDT'.
	timezone addDaylightSavingTime: daylight.
	
	^timezone