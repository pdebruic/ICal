private - filtering
byPositions: positionsCollection withDates: dates
	
	^ (self actualByPositions: positionsCollection asArray withDates: dates) flatten