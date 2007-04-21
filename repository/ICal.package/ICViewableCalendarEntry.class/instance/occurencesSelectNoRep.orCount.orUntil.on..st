private
occurencesSelectNoRep: aNoRepBlock orCount: aCountBlock orUntil: anUntilBlock on: aRule

	aRule hasRepetition ifFalse: [ ^ aNoRepBlock value ].
	aRule repetition class name = #SmallInteger
		ifTrue: [ ^ aCountBlock value ]
		ifFalse: [ ^ anUntilBlock value ].