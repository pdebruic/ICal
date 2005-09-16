tests
testTesting

  self assert: (appointment1 isAppointment).
  self deny: (appointment1 isToDo).
  self deny: (appointment1 isFullDayEvent).
  self deny: (appointment1 isSerie).

  self assert: (todo isToDo).
  self deny: (todo isAppointment).
  self deny: (todo isSerie).

  self assert: (appointment1 isValidForDate: (DateAndTime 
							year: 2005
							month: 5
							day: 18
							hour: 17
							minute: 3)asDate).
							
   self assert: (todo startsInHour: (TimeStamp now plusDays:4)).