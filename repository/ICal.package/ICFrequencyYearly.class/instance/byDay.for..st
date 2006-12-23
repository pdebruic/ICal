private
byDay: aDayIndex for: aMonth
	| weekStart |

	weeknumbers isEmpty ifTrue: [ ^ super byDay: aDayIndex for: aMonth ].
	
	weekStart := self dayIndexOf: (weekStartday ifNil: [ 'MO' ]).
	
	^ ((self validWeekStartMonthDaysForMonth: aMonth) collect: [:day|
				day + (aDayIndex < weekStart
					ifTrue: [ 7 - (weekStart - aDayIndex) ]
					ifFalse: [ aDayIndex - weekStart ])
			]) select: [:day| day between: 1 and: aMonth daysInMonth ]