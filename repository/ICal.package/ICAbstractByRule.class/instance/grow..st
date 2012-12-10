growing
grow: oldDates
	| newDates |
	newDates := OrderedCollection new.
	(oldDates groupedBy: [ :each | self growthGroupingFor: each ])
		keysAndValuesDo: [ :ruleInterval :existingDates | 
			| neededByValues interestingExistingDateParts |
			interestingExistingDateParts := existingDates collect: [ :each | self interestingPartOf: each ].
			neededByValues := self byValues reject: [ :each | interestingExistingDateParts includes: each ].
			newDates addAll: (self newDatesFrom: neededByValues considering: existingDates) ].
	oldDates addAll: newDates