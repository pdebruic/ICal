exporting
exportSingleLineValue: anObject type: aTypeInformation
	| convertionSelector |
	convertionSelector := aTypeInformation needsUtc ifTrue: [ #asICalUtcString ] ifFalse: [ #asICalString ].
	self exportLine: (String streamContents: [ :stream |
		stream nextPutAll: aTypeInformation name.
		(anObject isCollection not or: [ anObject isString ])
			ifTrue: [				
				anObject iCalType = aTypeInformation defaultType ifFalse: [
					stream
						nextPutAll: ';VALUE=';
						nextPutAll: anObject iCalType ].
				stream
					nextPut: $:;
					nextPutAll: (anObject perform: convertionSelector) ]
			ifFalse: [
				stream nextPut: $:.
				anObject
					do: [ :each | stream nextPutAll: (each perform: convertionSelector) ]
					separatedBy: [ stream nextPut: $, ] ] ])
	