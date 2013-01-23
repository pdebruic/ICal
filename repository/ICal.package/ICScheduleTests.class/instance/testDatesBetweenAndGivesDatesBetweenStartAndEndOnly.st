as yet unclassified
testDatesBetweenAndGivesDatesBetweenStartAndEndOnly
	| rule dates start end |
	rule := self dailyRrule.
	event addRecurrenceRule: rule.
	start := self dateAndTimeClass now.
	end := start.
	dates := event datesBetween: start and: end.
	self assert: dates size equals: 0.
	end := start + (Duration days: 100).
	dates := event datesBetween: start and: end.
	self assert: dates min > start.
	self assert: dates max < end.
	self assert: dates size = 100