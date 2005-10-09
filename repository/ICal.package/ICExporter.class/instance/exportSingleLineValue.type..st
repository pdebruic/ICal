exporting
exportSingleLineValue: anObject type: aTypeInformation
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
					nextPutAll: anObject asICalString ]
			ifFalse: [
				stream nextPut: $:.
				anObject
					do: [ :each | stream nextPutAll: each asICalString ]
					separatedBy: [ stream nextPut: $, ] ] ])
	