testing
testInitialize
	| anAppointment |
	anAppointment := ICEvent summary: 'physical test'.
	self assert: anAppointment summary = 'physical test'.
	self assert: anAppointment textualDescription = nil.
	self assert: anAppointment lastModified = nil.
	self assert: anAppointment isMediumPriority