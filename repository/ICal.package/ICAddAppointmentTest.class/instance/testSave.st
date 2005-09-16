tests
testSave
	| savedAppointment appointment |
	appointment := ICAppointment new
				calendar: calendar;
				place: 'bern';
				startDateAndTime: (DateAndTime 
							year: 2005
							month: 4
							day: 18
							hour: 21
							minute: 1);
				endDateAndTime: (DateAndTime 
							year: 2005
							month: 4
							day: 18
							hour: 22
							minute: 1);
				type: 'Event';
				category: ICCategory defaultCategories first;
				title: 'sleep';
				priority: ICEvent defaultPriorities second;
				text: 'because I''m always tired';
				hasAlert: false;
				yourself.
	calendar addEvent: appointment.
	savedAppointment := calendar appointments first.
	self assert: calendar appointments size = 1.
	self assert: savedAppointment place = 'bern'.
	self 
		assert: savedAppointment category = ICCategory defaultCategories first.
	self assert: savedAppointment title = 'sleep'.
	self assert: savedAppointment priority = 'normal'.
	self assert: savedAppointment text = 'because I''m always tired'.
	self deny: savedAppointment hasAlert