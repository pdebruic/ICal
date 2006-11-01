rendering
renderRowForWeek: aWeek on: html
	html tableRow: [
		aWeek datesDo: [:ea | self renderCellForDate: ea on: html].
	]