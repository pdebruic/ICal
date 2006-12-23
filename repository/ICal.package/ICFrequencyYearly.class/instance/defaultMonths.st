defaults
defaultMonths	
	"NOTE: This override is needed for the case that the month is not specified but yeardays, byday with occurrence or week numbers are.  In that case we
	simply force all months to be processed.  This would only be a problem if the default date were used (since it would show up every month) but obviously
	that wont be the case.  Also note that in the case the user specifies the yearday and the month this method wont be called.  But this is also ok since all
	constraints are to create an intersection, not a union (i.e. if both are specified then they only want the yearday when it occurs in the month they specify)"
	
	^ (yeardays isEmpty and: [ weeknumbers isEmpty and: [ self hasDateOccurences not ]])
		ifTrue: [ super defaultMonths ]
		ifFalse: [ (1 to: 12) asArray ]