tests
testToDoList
	| calendar |
		
	calendar := calendars detect: [ :each | each title = 'veriveri''s Calendar' ] ifNone: [nil].
	self deny: calendar isNil.
	self deny: calendar toDos size = 2.
	self deny: calendar toDos isNil.
