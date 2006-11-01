rendering
renderHoursOn: html 

0 to: 23 do: [:i | self renderHour: i on: html. ]
	