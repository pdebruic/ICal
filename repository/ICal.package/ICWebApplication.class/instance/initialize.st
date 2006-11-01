initialization
initialize
	| foo  |
	displayedCalendars := OrderedCollection new.
	foo := self calendars keys.
	events := OrderedCollection new.
	todos := OrderedCollection new.
	date := Date today.
	self calendars isNil ifTrue: [self setUp].
	foo do: [:k | displayedCalendars add: k].
	
	todoList := ICWebTodoList newDate: date app: self.
	table := ICWebEventTable newDate: date app: self.
	calendarList:= ICWebCalendarList new.
	
	calendarList app: self.
	calendarList initialize2.
	
	
	"foo do: [:calendar | self addCalendar: calendar]"