testEvents
testEventsForDate

  | app1 app2 app3 |
  app1 := ICAppointment title: 'event1'.
  app1 startDateAndTime: (DateAndTime year: 2006 month: 4 day: 22 hour: 22 minute: 12).
  app1 endDateAndTime:  (DateAndTime year: 2006 month: 4 day: 22 hour: 23 minute: 12).

  app2 := ICAppointment title: 'event1'.
  app2 startDateAndTime: (DateAndTime year: 2006 month: 4 day: 22 hour: 22 minute: 45).
  app2 endDateAndTime:  (DateAndTime year: 2006 month: 4 day: 22 hour: 23 minute: 30).

  app3 := ICAppointment title: 'event1'.
  app3 startDateAndTime: (DateAndTime year: 2006 month: 4 day: 22 hour: 22 minute: 55).
  app3 endDateAndTime:  (DateAndTime year: 2006 month: 4 day: 22 hour: 23 minute: 55).

  calendar addEvent: app1;
             addEvent: app2;
             addEvent: app3.

  self assert: ((calendar eventsForDate: (DateAndTime year: 2006 month: 4 day: 22 hour: 22 minute: 0)asDate) size = 3).
  calendar removeEvent: app1.
  self assert: ((calendar eventsForDate: (DateAndTime year: 2006 month: 4 day: 22 hour: 22 minute: 0)asDate) size = 2).
  calendar removeEvent: app2.
  self assert: ((calendar eventsForDate: (DateAndTime year: 2006 month: 4 day: 22 hour: 22 minute: 0)asDate) size = 1).