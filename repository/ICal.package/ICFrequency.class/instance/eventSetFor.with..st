private
eventSetFor: aDateAndTime with: aCollection
	| dates |

	dates := self eventsFor: aDateAndTime with: aCollection.
	
	self hasPositions
		ifTrue: [ | date datesTmp |
			datesTmp := OrderedCollection new.
			positions do: [ :position|
				date := dates at: position ifAbsent: [ nil ].
				date ifNotNil: [ datesTmp add: date ].
			].
			^ datesTmp.
		].
	
	^ dates.