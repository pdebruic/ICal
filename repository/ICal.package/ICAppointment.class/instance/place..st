accessing
place: aString 
	aString ifNotNil: [
		place := aString.
		(self calendar includesPlace: aString)
			 ifFalse: [self calendar addPlace: aString] ]