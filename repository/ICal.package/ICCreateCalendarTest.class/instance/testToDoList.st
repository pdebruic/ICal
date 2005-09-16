tests
testToDoList
	| root calendar |
	
	self deny: SW2Kernel instances isEmpty.
	root := SW2Kernel instances first root.	
	self deny: root isNil.	
		
	calendar := calendars detect: [ :each | each title = 'veriveri''s Calendar' ] ifNone: [nil].
	self deny: calendar isNil.
	self deny: calendar toDos size = 2.
	self deny: calendar toDos isNil.
