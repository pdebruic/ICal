growing
grow: oldDates
	| newDates |
	newDates := OrderedCollection new.
	(oldDates groupedBy: [ :each | self growthGroupingFor: each ])
		do: [ :existingDates | 

			newDates addAll: (self newDatesFrom: self byValues considering: existingDates) ].
	^newDates sort