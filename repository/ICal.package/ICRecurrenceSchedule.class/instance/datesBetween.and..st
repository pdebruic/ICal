enumerating
datesBetween: aStart and: anEnd
	datesInProcess := self basicDatesBetween: aStart and: anEnd.
	self byRules
		do: [ :each | 
			datesInProcess := each applyRulesTo: datesInProcess.
			self lastRuleDuration: each duration ].
	datesInProcess removeAllSuchThat: [ :each | each < aStart ].
	^ self ensureDatesEndCorrectly