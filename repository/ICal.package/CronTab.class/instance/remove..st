removing
remove: anObject 
	daemon remove: anObject.
	^ self
		remove: anObject
		ifAbsent: []