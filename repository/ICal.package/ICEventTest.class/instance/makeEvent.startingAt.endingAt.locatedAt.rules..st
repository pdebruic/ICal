private
makeEvent: eventName startingAt: startDTString endingAt: endDTString locatedAt: location rules: aRRuleStringCollection
	|event startDT|

	startDT := self dateAndTimeClass fromString: startDTString.
	
	event := (ICEvent summary: eventName)
		start: startDT;
		end: (self dateAndTimeClass fromString: endDTString);
		location: location.

	aRRuleStringCollection do: [:rule|
		event addRecurrenceRule:
			((ICRecurrenceRule fromICalString: rule) dtstart: startDT; yourself) ].

	^ event