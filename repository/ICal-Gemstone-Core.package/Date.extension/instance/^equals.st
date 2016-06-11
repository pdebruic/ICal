*ICal-Gemstone-Core
= aDate

"Returns true if the receiver represents the same date as that of the
 argument, and false if it doesn't."

(self == aDate) ifTrue: [ ^ true ].
(aDate isKindOf: self class) ifFalse: [ ^false ].
^ (year == aDate year) and: [dayOfYear == aDate dayOfYear]
