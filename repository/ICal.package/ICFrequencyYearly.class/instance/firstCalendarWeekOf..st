private
firstCalendarWeekOf: dt
	|date weekStartIndex|
	"Find the ISO 8601 compliant first week of (first year with at least 4 days in it, counting from Monday-Sunday)"

	date := DateAndTime
		year: dt year month: 1
		day: 1 + (self deltaToFirstDay: 'TH' in: (Date year: dt year month: 1 day: 1))		"NOTE: To have 4 days, it must at least start on Thursday"
		hour: dt hour minute: dt minute second: dt second.

	weekStartIndex := self dayIndexOf: weekStartday.

	^ date - (Duration days: (weekStartIndex > 5
		ifTrue: [ 8 - (weekStartIndex - 5) ]
		ifFalse: [ 5 - weekStartIndex ]))