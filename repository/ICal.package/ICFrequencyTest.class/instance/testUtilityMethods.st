testing
testUtilityMethods
	|months|
	
	months := {
		Month month: 1 year: 2006. Month month: 2 year: 2006.
		Month month: 4 year: 2006. Month month: 6 year: 2006.
		Month month: 9 year: 2006 }.

	self should: (#('SA' 'FR' 'TH' 'WE' 'TU' 'MO' 'SU') collect: [:d| secondly dayIndexOf: d ]) = #(7 6 5 4 3 2 1).

	self should: (months collect: [:m| secondly deltaToFirstDay: 'FR' in: m ]) = #(5 2 6 1 0).
	self should: (months collect: [:m| secondly deltaToLastDay: 'FR' in: m ]) = #(26 23 27 29 28).