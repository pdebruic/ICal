tests
testICalDate

	self assert: (iCalExporter iCalDate: appointment startDateAndTime) = '20050425'.
	self assert: (iCalExporter iCalDate: appointment endDateAndTime) = '20050425'.