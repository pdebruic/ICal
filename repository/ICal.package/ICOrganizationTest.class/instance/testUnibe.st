as yet unclassified
testUnibe
	| organization |
	organization := ICOrganization fromICalString: 'University of Bern'.
	self assert: organization name = 'University of Bern'.
	self assert: organization unitNames isEmpty.