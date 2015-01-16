*ICal-HTTPAPIClient
get: aCalendarName fromBaseUrl: aUrl
	"works with mozilla and icalshare.  expects a .ics file "

	| calData cal |
	calData := HTTPAPIClient httpClient get: aUrl , aCalendarName.
	cal := ICCalendarHandParser parseCalendarString: calData.
	cal name: aCalendarName.

	^ cal