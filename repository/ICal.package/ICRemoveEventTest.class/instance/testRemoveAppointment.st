tests
testRemoveAppointment
	event := ICEvent title: 'simple appointment'.
	calendar addEvent: event.
	event
		place: 'room one';
		category: ICCategory defaultCategories second;
		startDateAndTime: (DateAndTime 
					year: 2005
					month: 5
					day: 18
					hour: 17
					minute: 0);
		endDateAndTime: (DateAndTime 
					year: 2005
					month: 5
					day: 18
					hour: 20
					minute: 0);
		priority: ICJob lowPriority.
	self removeTesting: event