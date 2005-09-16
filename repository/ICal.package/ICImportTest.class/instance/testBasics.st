tests
testBasics
	self assert: parser calendar = calendar.
	self assert: parser events isEmpty.
	self assert: parser unsupportedICals isEmpty