exporting
exportGeneralData: anAppointment
		
	self exportLine: 'DTSTAMP:', (self iCalDateAndTime: (anAppointment stamp)).
	self exportLine: 'CREATED:', (self iCalDateAndTime: (anAppointment created)).
	self exportLine: 'LAST-MODIFIED:',  (self iCalDateAndTime: (anAppointment lastModified)).
	self exportLine: 'UID:', anAppointment uid.
	self exportLine: 'SUMMARY:', (anAppointment summary).
	self exportLine: 'DESCRIPTION:', (anAppointment textualDescription).
	
	anAppointment category ifNotNil: [
		self exportLine: 'CATEGORIES:', (anAppointment category summary).
	].
	
	anAppointment priority = 'low'
		ifTrue: [ self exportLine: 'PRIORITY:9'. ].

	anAppointment priority = 'normal'
		ifTrue: [ self exportLine: 'PRIORITY:5'. ].

	anAppointment priority = 'high'
		ifTrue: [ self exportLine: 'PRIORITY:1'. ].
	