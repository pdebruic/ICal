accessing
children
	| oc |
	oc := OrderedCollection new.
	oc addAll: self periods values;
		 addAll: app calendarList webCalendars.
	^ oc asArray