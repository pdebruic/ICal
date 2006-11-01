initialization
setUp
	| category appointment1 appointment2 appointment3 appointment4 appointment5 appointment6 appointment7 appointment8 todo todo2 calendar1 calendar2 calendar3 calendar4 |
	self calendars: Dictionary new.
	calendar1 := ICCalendar new.
	calendar2 := ICCalendar new.
	calendar3 := ICCalendar new.
	calendar4 := ICCalendar new.
	calendar1 summary: 'fun'.
	calendar2 summary: 'sport'.
	calendar3 summary: 'work'.
	calendar4 summary: 'holiday'.
	appointment1 := ICEvent summary: 'diner'.
	category := ICCategory summary: 'friends'.
	appointment1 addCategory: category.
	appointment1 uid: 'app1'.
	appointment1
		start: (TimeStamp
				year: 2006
				month: 9
				day: 2
				hour: 19
				minute: 15);
		
		end: (TimeStamp
				year: 2006
				month: 9
				day: 2
				hour: 22
				minute: 15).
	appointment1 beLowPriority.
	appointment1 location: 'in nature'.
	appointment1 beConfirmed.
	appointment2 := ICEvent summary: 'running'.
	appointment2 uid: 'app2'.
	appointment2
		start: (TimeStamp
				year: 2006
				month: 9
				day: 2
				hour: 8
				minute: 30);
		
		end: (TimeStamp
				year: 2006
				month: 9
				day: 2
				hour: 9
				minute: 40).
	appointment2 beTentative.
	appointment3 := ICEvent summary: 'doing Stuff...'.
	appointment3 uid: 'app3'.
	appointment3
		start: (TimeStamp
				year: 2006
				month: 9
				day: 3
				hour: 8
				minute: 30);
		
		end: (TimeStamp
				year: 2006
				month: 9
				day: 3
				hour: 9
				minute: 40).
	appointment3 beTentative.
	appointment4 := ICEvent summary: 'doing Stuff 2...'.
	appointment4 uid: 'app4'.
	appointment4
		start: (TimeStamp
				year: 2006
				month: 9
				day: 3
				hour: 16
				minute: 30);
		
		end: (TimeStamp
				year: 2006
				month: 9
				day: 3
				hour: 17
				minute: 40).
	appointment4 beTentative.
	appointment5 := ICEvent summary: 'doing Stuff 3...'.
	appointment5 uid: 'app5'.
	appointment5
		start: (TimeStamp
				year: 2006
				month: 9
				day: 5
				hour: 12
				minute: 30);
		
		end: (TimeStamp
				year: 2006
				month: 9
				day: 5
				hour: 15
				minute: 40).
	appointment5 beTentative.
	appointment6 := ICEvent summary: 'keeping busy...'.
	appointment6 addCategory: category.
	appointment6 uid: 'app6'.
	appointment6
		start: (TimeStamp
				year: 2006
				month: 9
				day: 4
				hour: 19
				minute: 15);
		
		end: (TimeStamp
				year: 2006
				month: 9
				day: 4
				hour: 22
				minute: 15).
	appointment6 beTentative.
	appointment6 beLowPriority.
	appointment6 location: 'in nature'.
	appointment7 := ICEvent summary: 'watching anime...'.
	appointment7 addCategory: category.
	appointment7 uid: 'app7'.
	appointment7
		start: (TimeStamp
				year: 2006
				month: 9
				day: 4
				hour: 9
				minute: 15);
		
		end: (TimeStamp
				year: 2006
				month: 9
				day: 4
				hour: 18
				minute: 15).
	appointment7 beLowPriority.
	appointment7 location: 'in nature'.
	appointment8 := ICEvent summary: 'blaming troy'.
	appointment8 addCategory: category.
	appointment8 uid: 'app8'.
	appointment8
		start: (TimeStamp
				year: 2006
				month: 9
				day: 3
				hour: 19
				minute: 0);
		
		end: (TimeStamp
				year: 2006
				month: 9
				day: 3
				hour: 20
				minute: 15).
	appointment8 beLowPriority.
	appointment8 status: ''.
	appointment8 location: 'in nature'.
	todo := ICTodo summary: 'Come to ESUG'.
	todo uid: 'todo1'.
	todo
		due: (TimeStamp
				year: 2006
				month: 9
				day: 1
				hour: 20
				minute: 15).
	todo2 := ICTodo summary: 'Go home'.
	todo2 uid: 'todo2'.
	todo2
		due: (TimeStamp
				year: 2006
				month: 9
				day: 8
				hour: 20
				minute: 15).
	calendar1 addEvent: appointment1;
		 addEvent: appointment2;
		 addEvent: appointment3.
	calendar2 addEvent: appointment4.
	calendar3 addEvent: appointment5;
		 addEvent: appointment6.
	calendar4 addEvent: appointment7;
		 addEvent: appointment8.
	calendar1 addTodo: todo.
	calendar3 addTodo: todo2.
	self class addCalendar: calendar1;
		 addCalendar: calendar2;
		 addCalendar: calendar3;
		 addCalendar: calendar4