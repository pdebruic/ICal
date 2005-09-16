testEvents
testRemoveEventWithId
   self assert: (calendar includesEventWithId: 'app1').
   calendar removeEventWithId: 'app1'.
   self assert: ((calendar eventWithId: 'app1')isNil).
   calendar removeEventWithId: 'todo1'.
   self assert: ((calendar eventWithId: 'todo1')isNil).