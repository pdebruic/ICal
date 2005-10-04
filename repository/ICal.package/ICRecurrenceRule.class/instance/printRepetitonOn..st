private
printRepetitonOn: aStream	
	aStream
		nextPutAll: (self repetition isInteger
			ifTrue: [ 'COUNT=' ]
			ifFalse: [ 'UNTIL=' ]);
		nextPutAll: self repetition asICalString