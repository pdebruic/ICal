private
intersect: aDateCol with: anotherDateCol
	aDateCol ifEmpty: [^ anotherDateCol ].
	anotherDateCol ifEmpty: [ ^ aDateCol ].
	^ aDateCol intersection: anotherDateCol.