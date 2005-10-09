exporting
exportValue: anObject type: aTypeInformation
	(anObject isNil
		or: [ anObject isCollection
			and: [ anObject isEmpty ]
			and: [ anObject isString not ] ])
			 ifFalse: [
			(anObject isCollection
				and: [ aTypeInformation multipleValuesPerLine not ]
				and: [ anObject isString not ])
					ifTrue: [
						anObject do: [ :each |
							self exportSingleLineValue: each type: aTypeInformation ] ]
					ifFalse: [
						self exportSingleLineValue: anObject type: aTypeInformation ] ]