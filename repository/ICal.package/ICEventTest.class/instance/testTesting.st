testing
testTesting

  self deny: (appointment1 isFullDayEvent).
  self deny: (appointment1 isRecurrent).

  self deny: (todo isRecurrent).

  self assert: (appointment1 isValidForDate: (Date 
							year: 2005
							month: 5
							day: 18)).
							
   self assert: (todo startsInHour: DateAndTime now + 4 days).