tests
testPriorityImport

	self assert: (parser priorityFromString: '1') = 'high'.
	self assert: (parser priorityFromString: '5') = 'normal'.
	self assert: (parser priorityFromString: '9') = 'low'.