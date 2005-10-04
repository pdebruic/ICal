exporting
exportGeneralData: anAppointment
		
	self exportLine: 'DTSTAMP:', (self iCalDateAndTime: (anAppointment tsCreated)).
	self exportLine: 'CREATED:', (self iCalDateAndTime: (anAppointment tsCreated)).
	self exportLine: 'LAST-MODIFIED:',  (self iCalDateAndTime: (anAppointment tsModified)).
	self exportLine: 'UID:', anAppointment id.
	self exportLine: 'SUMMARY:', (anAppointment title).
	self exportLine: 'DESCRIPTION:', (anAppointment text).
	
	anAppointment category ifNotNil: [
		self exportLine: 'CATEGORIES:', (anAppointment category title).
	].
	
	anAppointment priority = 'low'
		ifTrue: [ self exportLine: 'PRIORITY:9'. ].

	anAppointment priority = 'normal'
		ifTrue: [ self exportLine: 'PRIORITY:5'. ].

	anAppointment priority = 'high'
		ifTrue: [ self exportLine: 'PRIORITY:1'. ].
	