private
validWeekStartMonthDaysForMonth: aMonth
	^ (self validWeekStartYearDaysForMonth: aMonth) collect: [:day| day - aMonth day + 1]