testing
includesEventWithUid: anUid
	^self events anySatisfy: [ :each | each uid = anUid ].