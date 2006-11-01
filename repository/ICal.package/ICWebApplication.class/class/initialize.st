as yet unclassified
initialize
	"self initialize"

|application|
	application := self registerAsApplication: 'icalendar'.
	calendars := Dictionary new.
colors := OrderedCollection new.
	colors 
add: 'orange';add: 'blue';
		 add: 'pink';
		 add: 'green';
		 
		 add: 'cyan'.
n:=1.
	   application  libraries add: SULibrary ;  add: ICWebStyleLibrary.
	