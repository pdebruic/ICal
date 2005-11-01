as yet unclassified
testABCInc
	| organization |
	organization := ICOrganization fromICalString: 'ABC\, Inc.;North American Division;Marketing'.
	self assert: organization name = 'ABC, Inc.'.
	self assert: organization unitNames size = 2.
	self assert: organization unitNames first = 'North American Division'.
	self assert: organization unitNames second = 'Marketing'