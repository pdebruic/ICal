testing
testICalDateAndTime
	self 
		assert: (iCalExporter iCalDateAndTime: event start) = '20050425T104500Z'.
	self 
		assert: (iCalExporter iCalDateAndTime: event end) = '20050425T120900Z'