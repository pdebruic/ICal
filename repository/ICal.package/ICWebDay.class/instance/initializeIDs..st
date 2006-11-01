rendering
initializeIDs: html

	hoursId := Dictionary new.
	0 to: 23 do: [:i | hoursId at: i put: html nextId]