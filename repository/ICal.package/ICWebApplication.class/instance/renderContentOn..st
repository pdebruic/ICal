rendering
renderContentOn: html 
	events do: [:e | e id: html nextId].
	html div id: 'application';
		
		with: [html div class: 'grey';
				 with: 'SummerTalk iCalendar'.
			self renderUploadOn: html.
			"self renderChangeWeekOn: html."
			"self renderCalendarListOn: html."
			html div class: 'float';
				 with: table.
			"we render the table of events"
			html div class: 'float';
				 with: todoList.
			"we render the list of todos"
			html div class: 'float';
				 with: calendarList]