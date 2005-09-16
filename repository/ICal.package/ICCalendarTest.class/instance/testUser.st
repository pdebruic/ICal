tests
testUser
	| user |
	user := ICUser new.
	self assert: calendar user isNil.
	calendar user: user.
	self deny: calendar user isNil.
	self assert: calendar user == user