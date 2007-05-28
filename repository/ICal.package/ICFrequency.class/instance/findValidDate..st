validating
findValidDate: dt
	|dtFB dtstartFB|

	dtFB := self frequencyBoundryOf: dt.
	dtstartFB := self frequencyBoundryOf: dtstart.

	^ dt - (Duration seconds: (dtFB asSeconds - dtstartFB asSeconds \\ self intervalSeconds))