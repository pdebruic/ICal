enumerating
datesBetween: aStart and: anEnd
	| dateAndTimes |
	dateAndTimes := self basicDatesBetween: aStart and: anEnd.
	self byRules do: [ :each | each modify: dateAndTimes for: self ].
	^ dateAndTimes