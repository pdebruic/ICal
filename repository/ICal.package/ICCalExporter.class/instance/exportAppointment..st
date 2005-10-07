exporting
exportAppointment: anAppointment 
	self exportLine: 'BEGIN:VEVENT'.

	anAppointment isFullDayEvent 
		ifTrue: 
			[self exportLine: 'DTSTART;VALUE=DATE:' 
						, (self iCalDate: anAppointment start).
			self exportLine: 'DTEND;VALUE=DATE:' 
						, (self iCalDate: anAppointment end + (Duration days: 1))]
		ifFalse: 
			[self exportLine: 'DTSTART:' 
						, (self iCalDateAndTime: anAppointment start).
			self exportLine: 'DTEND:' , (self iCalDateAndTime: anAppointment end)].
	self exportGeneralData: anAppointment.
	
	self exportLine: 'STATUS:' , anAppointment status asUppercase.			
	self exportLine: 'LOCATION:' , anAppointment place.
	self exportLine: 'TRANSP:' 
				, (anAppointment isFullDayEvent ifTrue: ['TRANSPARENT'] ifFalse: ['OPAQUE']).

	self exportLine: 'END:VEVENT'