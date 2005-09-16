tests
testStatusImport

	self assert: (parser statusFromString: 'TENTATIVE') = 'tentative'.
	self assert: (parser statusFromString: 'CONFIRMED') = 'confirmed'.
	self assert: (parser statusFromString: 'CANCELLED') = 'cancelled'.