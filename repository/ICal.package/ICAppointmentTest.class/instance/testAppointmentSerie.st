tests
testAppointmentSerie
	self assert: serie events size = 2.
	self assert: (serie includes: appointment).
	self assert: serie title = 'aSerie'.
	serie do: [:each | self assert: each class == ICAppointment]