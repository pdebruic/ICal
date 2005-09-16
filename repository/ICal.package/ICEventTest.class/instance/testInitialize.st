tests
testInitialize
  | anAppointment |
  anAppointment := ICAppointment title: 'physical test'.
  self assert: (anAppointment title = 'physical test').
  self assert: (anAppointment text = String new).
  self assert: (anAppointment tsModified = anAppointment tsCreated).
  self assert: (anAppointment priority = 'normal').
  