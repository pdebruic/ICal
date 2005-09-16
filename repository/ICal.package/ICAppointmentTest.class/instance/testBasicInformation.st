tests
testBasicInformation
	self assert: appointment category class == ICCategory.
	self assert: appointment title = 'aTitle'.
	self assert: appointment place = 'Bern'.
	self assert: appointment text = 'description'.
	self assert: appointment type = 'Event'.
	self assert: appointment startDateAndTime class = DateAndTime.
	self 
		assert: appointment startDateAndTime > (Date 
						year: 2005
						month: 4
						day: 18).
	self assert: appointment endDateAndTime class = DateAndTime.
	self 
		assert: appointment endDateAndTime > (Date 
						year: 2005
						month: 4
						day: 18)