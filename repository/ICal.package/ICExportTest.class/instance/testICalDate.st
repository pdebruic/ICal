testing
testICalDate
	self assert: (iCalExporter iCalDate: event start) = '20050425'.
	self assert: (iCalExporter iCalDate: event end) = '20050425'