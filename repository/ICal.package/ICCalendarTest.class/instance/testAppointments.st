tests
testAppointments
  "test add and remove methods for appointments"
   | size |
   size := 1.

   self assert: calendar appointments size = size.

   calendar addEvent: appointment2.
   self assert: calendar appointments size = (size +1).

   calendar removeEvent: appointment1.
   self assert: calendar appointments size = size.

   calendar removeEvent: appointment2.
   self assert: calendar appointments isEmpty.
   calendar addEvent: appointment1.
   self assert: (calendar appointments first) == appointment1.


 