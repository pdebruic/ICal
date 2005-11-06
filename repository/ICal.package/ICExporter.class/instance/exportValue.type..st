exporting
exportValue: anObject type: aTypeInformation
	| convertionSelector |
	convertionSelector := aTypeInformation needsUtc ifTrue: [ #asICalUtcString ] ifFalse: [ #asICalString ].
	self lineStream nextPut: $:.
	(anObject isCollection not or: [ anObject isString ])
			ifTrue: [				
				self lineStream nextPutAll: (anObject perform: convertionSelector) ]
			ifFalse: [
				anObject
					do: [ :each | self lineStream nextPutAll: (each perform: convertionSelector) ]
					separatedBy: [ self lineStream nextPut: $, ] ]