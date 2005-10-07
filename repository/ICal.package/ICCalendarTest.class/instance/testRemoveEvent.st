testing-events
testRemoveEvent
    | appNumber toDoNumber totalNumber  |
    appNumber := calendar appointments size.
    toDoNumber := calendar todos size.
    totalNumber := calendar events size.
    
    calendar removeEvent: toDo.
    self assert: (calendar todos size = (toDoNumber - 1)).
    self assert: (calendar events size = (totalNumber - 1)).

    calendar removeEvent: appointment1.
    self assert: (calendar appointments size = (appNumber - 1)).
    self assert: (calendar events size = (totalNumber - 2)).