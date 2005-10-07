testing
includesTodoWithUid: anUid
	^self todos anySatisfy: [ :each | each uid = anUid ].