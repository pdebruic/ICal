private
significantValueOf: aDateAndTime
	"The easiest thing here is to just return the DateAndTime pinned to the week start for the argument"

	^ self frequencyBoundryOf: aDateAndTime