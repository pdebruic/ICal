comparing
= aCategory
	^(aCategory isKindOf: ICCategory)
		and: [ self title = aCategory title ]