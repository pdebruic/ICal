accessing
place: aString 
	place := aString.
	(self calendar includesPlace: aString) 
		 ifFalse: [self calendar addPlace: aString]