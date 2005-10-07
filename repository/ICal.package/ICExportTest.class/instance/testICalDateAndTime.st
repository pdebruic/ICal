testing
testICalDateAndTime

	self assert: (iCalExporter iCalDateAndTime: appointment start) = '20050425T104500Z'.
	self assert: (iCalExporter iCalDateAndTime: appointment end) = '20050425T120900Z'.