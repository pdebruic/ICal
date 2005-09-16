categories
categories
	categories isEmpty 
		ifTrue: [categories addAll: ICCategory defaultCategories].
	^categories