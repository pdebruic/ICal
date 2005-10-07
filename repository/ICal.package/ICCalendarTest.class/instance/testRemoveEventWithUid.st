testing-events
testRemoveEventWithUid
   self assert: (calendar includesEventWithUid: 'app1').
   calendar removeEventWithUid: 'app1'.
   self assert: ((calendar eventWithUid: 'app1')isNil).
   calendar removeEventWithUid: 'todo1'.
   self assert: ((calendar eventWithUid: 'todo1')isNil).