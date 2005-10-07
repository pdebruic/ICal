running
setUp
	| calendar |
	user := ICUser new.
	calendar := ICCalendar summary: 'veriveri''s Calendar'.
	calendar addUser: user.
	calendars := OrderedCollection with: calendar