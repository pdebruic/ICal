accessing
weekStartday: aString 
	"The ICRecurrenceRule keeps a local copy of WKST so that it can determine if the caller has ever
		set the value.  This allows the ICal export to work, but the standard (MO) WKST to be used by
		default"
	weekStartday := aString.
	frequency weekStartday: aString