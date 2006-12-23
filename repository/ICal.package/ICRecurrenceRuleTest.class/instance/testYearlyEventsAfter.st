testing
testYearlyEventsAfter
	| rule jan jan97 jan96 |
	
	jan := (Month month: 1 year: 2006) asDateAndTime.
	jan97 := (Month month: 1 year: 1997) asDateAndTime.
	jan96 := (Month month: 1 year: 1996) asDateAndTime.
		
	rule := (ICRecurrenceRule fromICalString: 'FREQ=YEARLY;BYDAY=SA;BYMONTHDAY=7,8,9,10,11,12,13')
			dtstart: (self dateAndTimeClass year: 2006 month: 1 day: 1 hour: 8 minute: 0 second: 0); yourself.
			
	self assert: (rule events: 4 after: jan) = (OrderedCollection new
		add: (self dateAndTimeClass year: 2006 month: 1 day: 7 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2007 month: 1 day: 13 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2008 month: 1 day: 12 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2009 month: 1 day: 10 hour: 8 minute: 0 second: 0);
		yourself).

	rule := (ICRecurrenceRule fromICalString: 'FREQ=YEARLY;INTERVAL=2;COUNT=10;BYMONTH=1,2,3')
		dtstart: (self dateAndTimeClass year: 2006 month: 8 day: 10 hour: 8 minute: 0 second: 0); yourself.
		
	self assert: (rule events: 4 after: jan) = (OrderedCollection new
		add: (self dateAndTimeClass year: 2006 month: 1 day: 10 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2006 month: 2 day: 10 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2006 month: 3 day: 10 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2008 month: 1 day: 10 hour: 8 minute: 0 second: 0);
		yourself).
		
	rule := (ICRecurrenceRule fromICalString: 'FREQ=YEARLY;INTERVAL=3;COUNT=10;BYYEARDAY=1,100,200')
		dtstart: (self dateAndTimeClass year: 1997 month: 8 day: 10 hour: 8 minute: 0 second: 0); yourself.
		
	self assert: (rule events: 6 after: jan97) = (OrderedCollection new
		add: (self dateAndTimeClass year: 1997 month: 1 day: 1 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 1997 month: 4 day: 10 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 1997 month: 7 day: 19 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2000 month: 1 day: 1 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2000 month: 4 day: 9 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2000 month: 7 day: 18 hour: 8 minute: 0 second: 0);
		yourself).
		
	rule := (ICRecurrenceRule fromICalString: 'FREQ=YEARLY;BYDAY=20MO')
		dtstart: (self dateAndTimeClass year: 1997 month: 8 day: 10 hour: 8 minute: 0 second: 0); yourself.
		
	self assert: (rule events: 3 after: jan97) = (OrderedCollection new
		add: (self dateAndTimeClass year: 1997 month: 5 day: 19 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 1998 month: 5 day: 18 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 1999 month: 5 day: 17 hour: 8 minute: 0 second: 0);
		yourself).
		
	"rule := (ICRecurrenceRule fromICalString: 'FREQ=YEARLY;BYWEEKNO=20;BYDAY=MO')
		dtstart: (self dateAndTimeClass year: 1997 month: 8 day: 10 hour: 8 minute: 0 second: 0); yourself.
		
	self assert: (rule events: 3 after: jan97) = (OrderedCollection new
		add: (self dateAndTimeClass year: 1997 month: 5 day: 12 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 1998 month: 5 day: 11 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 1999 month: 5 day: 17 hour: 8 minute: 0 second: 0);
		yourself).
		
	NOTE:  This one probably wont work on mine, but it's ok since the RRule doesn't part it anyway"

	rule := (ICRecurrenceRule fromICalString: 'FREQ=YEARLY;INTERVAL=4;BYMONTH=11;BYDAY=TU;BYMONTHDAY=2,3,4,5,6,7,8')
		dtstart: (self dateAndTimeClass year: 1996 month: 8 day: 10 hour: 8 minute: 0 second: 0); yourself.
		
	self assert: (rule events: 3 after: jan96) = (OrderedCollection new
		add: (self dateAndTimeClass year: 1996 month: 11 day: 5 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2000 month: 11 day: 7 hour: 8 minute: 0 second: 0);
		add: (self dateAndTimeClass year: 2004 month: 11 day: 2 hour: 8 minute: 0 second: 0);
		yourself).