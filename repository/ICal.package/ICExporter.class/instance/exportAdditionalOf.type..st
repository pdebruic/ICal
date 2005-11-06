exporting
exportAdditionalOf: anObject type: aTypeInformation
	"self exportParameter: 'ENCODING' value: 'ISO-8859-1'."
	anObject exportICalParametersOn: self
		