accessing
events
"will probably be obsolete soon"

	| tmp tmp2 |
	tmp := app events select: [:e | e event start asDate = date].
	tmp2 := SortedCollection 
				sortBlock: [:a :b | a event start < b event start].
	tmp2 addAll: tmp.
	^tmp2