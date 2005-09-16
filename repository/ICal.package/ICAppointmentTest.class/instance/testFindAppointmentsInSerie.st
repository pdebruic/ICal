tests
testFindAppointmentsInSerie
	| appointments |
	appointments := serie findValidAppointmentsForDate: (Date 
						year: 2005
						month: 4
						day: 18).
	self assert: appointments size = 2.
	self assert: (appointments includes: appointment).
	serie addEvent: ((ICAppointment title: 'title2')
				calendar: calendar;
				place: 'Honolulu';
				text: 'aText';
				type: 'event';
				startDateAndTime: (DateAndTime 
							year: 2005
							month: 4
							day: 19
							hour: 17
							minute: 0);
				endDateAndTime: (DateAndTime 
							year: 2005
							month: 4
							day: 19
							hour: 18
							minute: 0);
				yourself).
	appointments := serie findValidAppointmentsForDate: (Date 
						year: 2005
						month: 4
						day: 18).
	self assert: appointments size = 2.
	appointments := serie findValidAppointmentsForDate: (Date 
						year: 2005
						month: 4
						day: 19).
	self assert: appointments size = 1.
	self deny: (appointments includes: appointment)