*ICal-Gemstone-Core
< aDate

"Returns true if the receiver represents a date before that of the argument,
 and false if it doesn't.  Generates an error if the argument is not
 a Date."

| argYear |

argYear := aDate year.
(year == argYear)
  ifTrue: [ ^ dayOfYear < aDate dayOfYear ]
  ifFalse: [ ^ year < argYear ].
