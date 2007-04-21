This is a SmallWiki 2 Calendar. It is the base Class of the Model. 
Mangages the adding, editing, removing of it parts.
Provides useful methods to get the elements we are looking for.

Holds:
-events: is an OrderedCollection of SWCEvents. An Event can be a SWCAppointment, SWCEventSerie or a SWCToDo

-places: is a Set of places which are stored as Strings. The calendar stores here the places the user used once by defining an Event.

-categories: is an OrderedCollection of SWCCategory Objects. 