private
makeEvent: eventName startingAt: startDTString endingAt: endDTString locatedAt: location rules: aRRuleStringCollection excludingRules: anExlusionaRuleStringCollection
	|event|

	event := self makeEvent: eventName startingAt: startDTString endingAt: endDTString locatedAt: location rules: aRRuleStringCollection.

	anExlusionaRuleStringCollection do: [:exrule|
		event addExclusionRule: ((ICRecurrenceRule fromICalString: exrule)
			dtstart: (DateAndTime fromString: startDTString); yourself) ].

	^ event