private
byDayFor: aMonth
	^ Array streamContents: [:stream|
		weekdays do: [:e| | day |
			e class name = #Association
				ifTrue: [ 
					day := self dayIndexOf: e key.
					day := self byDay: day for: aMonth at: e value.
					day ifNotNil: [ stream nextPut: day ].
				]
				ifFalse: [
					stream nextPutAll: (self byDay: (self dayIndexOf: e) for: aMonth).
				]
		]
	]