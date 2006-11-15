private
dates: aCollection atOrAfter: aDateAndTime

	"TODO: The functions that generate dates have only 24 hour resolution ATM"
	| start |
	start := aCollection findFirst: [:date| date >= aDateAndTime].
	start = 0 ifTrue: [ ^ OrderedCollection new ].
	(start = 1) not ifTrue: [ ^ aCollection copyFrom: start to: aCollection size ].
	
	^ aCollection.