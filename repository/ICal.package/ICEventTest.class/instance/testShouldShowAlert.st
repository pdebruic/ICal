testing
testShouldShowAlert	
	self signalFailure: 'not implemented'.
	appointment2 alertTime: DateAndTime tomorrow.
	appointment2 hasAlert: true.
	calendar addEvent: appointment2.
	self deny: (appointment2 shouldShowAlert).
	appointment2 alertTime: DateAndTime yesterday.
	self assert: (appointment2 shouldShowAlert).
  