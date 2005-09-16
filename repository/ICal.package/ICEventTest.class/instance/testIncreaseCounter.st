tests
testIncreaseCounter
  appointment2 alertTime: (DateAndTime year: 2005 month: 5 day: 12 hour: 12 minute: 2).
  self assert: (appointment2 alertCounter = 0).
  appointment2 increaseAlertCounter;
                  increaseAlertCounter;
                  increaseAlertCounter.
  self assert: (appointment2 alertCounter = 3).
  calendar addEvent: appointment2.
  self deny: (appointment2 shouldShowAlert).
