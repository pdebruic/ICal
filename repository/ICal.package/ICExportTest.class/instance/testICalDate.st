testing
testICalDate

	self assert: (iCalExporter iCalDate: appointment start) = '20050425'.
	self assert: (iCalExporter iCalDate: appointment end) = '20050425'.