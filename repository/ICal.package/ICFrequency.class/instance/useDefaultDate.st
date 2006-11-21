accessing
useDefaultDate
	^ (weeknumbers notEmpty or: [ yeardays notEmpty or: [ monthdays notEmpty or: [ weekdays notEmpty ] ] ]) not