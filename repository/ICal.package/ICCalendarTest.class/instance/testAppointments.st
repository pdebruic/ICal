testing
testAppointments
  "test add and remove methods for appointments"
   | size |
   size := 1.

   self assert: calendar events size = size.

   calendar addEvent: appointment2.
   self assert: calendar events size = (size +1).

   calendar removeEvent: appointment1.
   self assert: calendar events size = size.

   calendar removeEvent: appointment2.
   self assert: calendar events isEmpty.
   calendar addEvent: appointment1.
   self assert: (calendar events first) == appointment1.


 