defaults
monthsOrDefault
	"TODO: Should this be moved to ICFrequencyYearly?"

	^ monthnumbers notEmpty
		ifTrue: [ monthnumbers ]
		ifFalse: [ OrderedCollection new add: dtstart month; yourself ]