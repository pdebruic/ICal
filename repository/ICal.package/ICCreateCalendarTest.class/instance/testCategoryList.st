tests
testCategoryList
	| root calendar |
	
	self deny: SW2Kernel instances isEmpty.
	root := SW2Kernel instances first root.	
	self deny: root isNil.	
		
	calendar := calendars detect: [ :each | each title = 'veriveri''s Calendar' ] ifNone: [nil].
	self deny: calendar isNil.
	self assert: calendar categories size = 2.
	self deny: calendar categories isNil.
	
