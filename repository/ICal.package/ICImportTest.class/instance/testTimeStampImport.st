tests
testTimeStampImport

	self assert: (parser timestampFromICal: '20050425T120900Z') = (TimeStamp year: 2005 month: 4 day: 25 hour: 12 minute: 9).
	self assert: (parser timestampFromICal: '20050425T104500Z') = (TimeStamp year: 2005 month: 4 day: 25 hour: 10 minute: 45).
	self assert: (parser timestampFromICal: '20050425T104500Z') class = TimeStamp.