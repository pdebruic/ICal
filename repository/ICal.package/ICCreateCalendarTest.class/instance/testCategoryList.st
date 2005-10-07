testing
testCategoryList
	| calendar |
		
	calendar := calendars detect: [ :each | each summary = 'veriveri''s Calendar' ] ifNone: [nil].
	self deny: calendar isNil.
	self assert: calendar categories size = 2.
	self deny: calendar categories isNil.
	
