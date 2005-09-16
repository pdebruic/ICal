tests
testICalDateAndTime

	self assert: (iCalExporter iCalDateAndTime: appointment startDateAndTime) = '20050425T104500Z'.
	self assert: (iCalExporter iCalDateAndTime: appointment endDateAndTime) = '20050425T120900Z'.