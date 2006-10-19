date-time
fromICalDateAndTimeString: aString class: aClass
	| yearMonthDay hourMinuteSecond |
	yearMonthDay := self splitYearMonthDayICal: (aString first: 8).
	hourMinuteSecond := self splitHourMinuteSecondICal: (aString allButFirst: 9).
	"aString size >= 15"
	^aClass
		year: yearMonthDay first
		month: yearMonthDay second
		day: yearMonthDay third
		hour: hourMinuteSecond first
		minute: hourMinuteSecond second
		second: hourMinuteSecond third