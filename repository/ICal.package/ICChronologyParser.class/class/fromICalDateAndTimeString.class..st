date-time
fromICalDateAndTimeString: aString class: aClass
	| yearMonthDay hourMinuteSecond instance |
	yearMonthDay := self splitYearMonthDayICal: (aString first: 8).
	hourMinuteSecond := self splitHourMinuteSecondICal: (aString allButFirst: 9).
	"aString size >= 15"
	instance := aClass
		year: yearMonthDay first
		month: yearMonthDay second
		day: yearMonthDay third
		hour: hourMinuteSecond first
		minute: hourMinuteSecond second
		second: hourMinuteSecond third.
	^aString last = $Z
		ifTrue: [ instance asUTCWithOffsetAdded ]
		ifFalse: [ instance ]