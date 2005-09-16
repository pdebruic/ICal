tests
testPlaces
	"self assert: (calendar includesPlace: 'IAM BERN')."
	self assert: (calendar includesPlace: 'Geneve').
	self deny: (calendar includesPlace: 'home').
	self assert: calendar places size = 4.
	calendar addPlace: 'Trauminsel Neverland'.
	self assert: calendar places size = 5.
	self assert: (calendar places includes: 'Trauminsel Neverland').
	calendar removePlace: 'Geneve'.
	self deny: (calendar places includes: 'Geneve').
	self assert: calendar places size = 4.