accessing
interval: anInteger
	"The ICRecurrenceRule keeps a local copy of interval so that it can determine if the caller has ever
		set the value.  This allows the ICal export to work, but the standard (1) interval to be used by
		default"
	interval := anInteger.
	frequency interval: anInteger