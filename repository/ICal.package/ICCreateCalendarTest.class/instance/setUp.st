configuration
setUp
	| calendar |
	user := ICUser new.
	calendar := ICCalendar title: 'veriveri''s Calendar'.
	calendar user: user.
	calendars := OrderedCollection with: calendar