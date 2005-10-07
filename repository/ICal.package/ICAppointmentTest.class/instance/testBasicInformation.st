testing
testBasicInformation
	self assert: appointment summary = 'aTitle'.
	appointment categories do: [ :each |
		self assert:  each class == ICCategory ].
	self assert: appointment place = 'Bern'.
	self assert: appointment textualDescription = 'description'.
	self assert: appointment start class = DateAndTime.
	self 
		assert: appointment start > (Date 
						year: 2005
						month: 4
						day: 18).
	self assert: appointment end class = DateAndTime.
	self 
		assert: appointment end > (Date 
						year: 2005
						month: 4
						day: 18)