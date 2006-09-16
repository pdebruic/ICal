initialization
initialize
	super initialize.
	canSelectBlock := [:foo | true].
	"we can *always* select a date"
	month := Date today month.
	date
		ifNil: [date := Date today].
	shouldDisplay := false.
	content := ''.
	id1 := 'id001'.
	id2 := 'id002'.
	id3 := 'id003'.
	id4 := 'id004'