testing
testDateImport

	self assert: (parser dateAndTimeFromICal: '20050425T120900Z') = (DateAndTime year: 2005 month: 4 day: 25 hour: 12 minute: 9).
	self assert: (parser dateAndTimeFromICal: '20050425T104500Z') = (DateAndTime year: 2005 month: 4 day: 25 hour: 10 minute: 45).
	
	self assert: (parser dateAndTimeFromICal: '20050425T104500Z') class = DateAndTime.
