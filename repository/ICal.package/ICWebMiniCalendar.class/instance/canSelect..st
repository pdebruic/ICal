testing
canSelect: aDate
	^ canSelectBlock notNil and: [canSelectBlock value: aDate]