accessing
renderOn: html
	html numberInput
		size: 3;
		value: self occurrences;
		onChange: html jQuery post serializeThis;
		callback: [ :val | self occurrences: val asNumber ].
	html render: ' occurence(s)'