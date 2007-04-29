testing
testIntersect

	self should: (secondly
		intersect: { ICFrequencyPeriod new start: 1 end: 5. }
		with: { ICFrequencyPeriod new start: 2 end: 4. }) first = (ICFrequencyPeriod new start: 2 end: 4).

	self should: (secondly
		intersect: { ICFrequencyPeriod new start: 1 end: 3. }
		with: { ICFrequencyPeriod new start: 4 end: 6. }) isEmpty.

	self should: (secondly
		intersect: { ICFrequencyPeriod new start: 4 end: 6. }
		with: { ICFrequencyPeriod new start: 1 end: 3. }) isEmpty.

	self should: (secondly
		intersect: { ICFrequencyPeriod new start: 1 end: 5. }
		with: { ICFrequencyPeriod new start: 2 end: 7. }) first = (ICFrequencyPeriod new start: 2 end: 5).