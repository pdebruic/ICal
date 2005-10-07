testing
testInitialize
	| anAppointment |
	anAppointment := ICEvent summary: 'physical test'.
	self assert: anAppointment summary = 'physical test'.
	self assert: anAppointment textualDescription = String new.
	self assert: anAppointment lastModified = anAppointment created.
	self assert: anAppointment isMediumPriority