testEvents
testIncludesEventWithId
   self assert: (calendar includesEventWithId: 'app1').
   self assert: (calendar includesEventWithId: 'todo1').
   self deny: (calendar includesEventWithId: 'app2').
   calendar addEvent: appointment2.
   self assert: (calendar includesEventWithId: 'app2').
   calendar removeEvent: toDo.
   self deny: (calendar includesEventWithId: 'todo1').