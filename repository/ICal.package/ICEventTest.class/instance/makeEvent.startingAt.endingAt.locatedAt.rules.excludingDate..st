private
makeEvent: eventName startingAt: startDTString endingAt: endDTString locatedAt: location rules: aRRuleStringCollection excludingDate: anExlusionDT
	|event|

	event := self makeEvent: eventName startingAt: startDTString endingAt: endDTString locatedAt: location rules: aRRuleStringCollection.

	event exclusionDates: { DateAndTime fromString: anExlusionDT } asOrderedCollection.

	^ event