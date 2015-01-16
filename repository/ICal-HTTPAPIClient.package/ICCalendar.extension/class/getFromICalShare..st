*ICal-HTTPAPIClient
getFromICalShare: aCalendarName
	"see http://icalshare.com  get the name from the end of the 'download calendar' button"

	^ self get: aCalendarName fromBaseUrl: 'http://ical.mac.com/ical/'