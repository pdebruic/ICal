private
dates: aCollection atOrAfter: aDateAndTime
	| start |
	
	"TODO: This needs to get moved to ICViewableCalenderEntry probably"
	"self halt."
	start := aCollection findFirst: [:date| date >= aDateAndTime].
	start = 0 ifTrue: [ ^ OrderedCollection new ].
	(start = 1) not ifTrue: [ ^ aCollection copyFrom: start to: aCollection size ].
	
	^ aCollection.