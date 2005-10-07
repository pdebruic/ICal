testing-events
testEventsForTimeStamp
  self assert: ((calendar eventsForTimeStamp:  (DateAndTime year: 2005 month: 5 day: 20 hour: 19 minute: 0)asTimeStamp) size = 1).
  
  calendar removeEvent: appointment1.
  self assert: ((calendar eventsForTimeStamp:  (DateAndTime year: 2005 month: 5 day: 20 hour: 19 minute: 0)asTimeStamp) isEmpty).
  
   self assert: ((calendar eventsForTimeStamp: (DateAndTime year: 2005 month: 7 day: 30 hour: 22 minute: 0)asTimeStamp) size = 1).

   calendar removeEvent: toDo.
   self assert: ((calendar eventsForTimeStamp: (DateAndTime year: 2005 month: 7 day: 30 hour: 22 minute: 0)asTimeStamp) isEmpty).