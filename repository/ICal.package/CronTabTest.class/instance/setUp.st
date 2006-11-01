as yet unclassified
setUp
	| category appointment1 appointment2 appointment3 todo todo2 calendar ab rb1 rb2 tb1 tb2 sub1 sub2 |
	calendar := ICCalendar new.
	appointment1 := ICEvent summary: 'diner'.
	category := ICCategory summary: 'friends'.
	appointment1 addCategory: category.
	appointment1 uid: 'app1'.
	appointment1
		start: (DateAndTime
				year: 2006
				month: 9
				day: 3
					hour: 17
				minute: 18);
		
		end: (DateAndTime
				year: 2006
				month: 9
				day: 3
				hour: 17
				minute: 20).
	appointment1 beLowPriority.
	appointment1 location: 'in nature'.
	appointment2 := ICEvent summary: 'running'.
	appointment2 uid: 'app2'.
	appointment2
		start: (DateAndTime
				year: 2006
				month: 9
				day: 3
				hour: 17
				minute: 17);
		
		end: (DateAndTime
				year: 2006
				month: 9
				day: 3
				hour: 17
				minute: 19).
	appointment3 := ICEvent summary: 'doing Stuff...'.
	appointment3 uid: 'app3'.
	appointment3
		start: (DateAndTime
				year: 2006
				month: 9
				day: 3
				hour: 17
				minute: 18);
		
		end: (DateAndTime
				year: 2006
				month: 9
				day: 3
				hour: 17
				minute: 19).
	
	todo := ICTodo summary: 'clean the living-room'.
	todo uid: 'todo1'.
	todo
		due: (DateAndTime
				year: 2006
				month: 9
				day: 3
				hour: 15
				minute: 50).
	todo2 := ICTodo summary: 'Blogging'.
	todo2 uid: 'todo2'.
	todo2
		due: (DateAndTime
				year: 2006
				month: 9
				day: 3
				hour: 15
				minute: 53).
	calendar addEvent: appointment1;
		 addEvent: appointment2;
		 addEvent: appointment3;
		 addTodo: todo;
		 addTodo: todo2.
	cron1 := CronTab new.
	cron2 := CronTab new.
	ab := [:e | e].
	
	cron1 daemon activate.
	cron2 daemon activate.
	
	sub1 := [ :e | e start < DateAndTime now].
	sub2 := [ :e | e end < DateAndTime now].
	cron1 daemon startUpBlock: sub1.
	cron2 daemon startUpBlock: sub2.
	cron1 daemon addBlock: ab.
	cron2 daemon addBlock: ab.
	rb1 := [:elt | cron2 add: elt].
	rb2 := [:elt | Transcript show: 'I removed ' , elt printString;
				 cr].
	cron1 daemon removeBlock: rb1.
	cron2 daemon removeBlock: rb2.
	tb1 := [:elt | elt start asDate = Date today
				& (elt start asTime
						between: (Time now subtractTime: 60 seconds)
						and: Time now)].
	tb2 := [:elt | elt end asDate = Date today
				& (elt end asTime
						between: (Time now subtractTime: 60 seconds)
						and: Time now)].
	cron1 daemon taskBlock: tb1.
	cron2 daemon taskBlock: tb2.
	cron1 addAll: calendar events