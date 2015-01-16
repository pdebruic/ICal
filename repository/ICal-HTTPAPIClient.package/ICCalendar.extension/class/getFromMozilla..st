*ICal-HTTPAPIClient
getFromMozilla: aCalendarName
	"see their list here: https://www.mozilla.org/en-US/projects/calendar/holidays/"

	self get: aCalendarName fromBaseUrl: 'http://mozorg.cdn.mozilla.net/media/caldata/'