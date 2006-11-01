private
dates: aCollection after: aTimeSpan

	"TODO: The functions that generate dates have only 24 hour resolution ATM"
	| start |
	start := aCollection findFirst: [:date| date > aTimeSpan].
	start = 0 ifTrue: [ ^ OrderedCollection new ].
	(start = 1) not ifTrue: [ ^ aCollection copyFrom: start to: aCollection size ].
	
	^ aCollection.