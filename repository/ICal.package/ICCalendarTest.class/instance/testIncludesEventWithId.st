testing-events
testIncludesEventWithId
   self assert: (calendar includesEventWithUid: 'app1').
   self assert: (calendar includesEventWithUid: 'todo1').
   self deny: (calendar includesEventWithUid: 'app2').
   calendar addEvent: appointment2.
   self assert: (calendar includesEventWithUid: 'app2').
   calendar removeEvent: toDo.
   self deny: (calendar includesEventWithUid: 'todo1').