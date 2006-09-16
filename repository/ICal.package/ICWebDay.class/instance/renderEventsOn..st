rendering
renderEventsOn: html 
	"self events2 inspect ."
	self events2
		do: [:e | html div style: e visibility;
				
				 with: e.
				
				]