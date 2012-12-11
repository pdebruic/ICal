shrinking
groupFor: aDateAndTime
	self recurringSchedule isYearly ifTrue: [^aDateAndTime year]. 
	self recurringSchedule isMonthly ifTrue: [^(aDateAndTime year *100) + aDateAndTime month]. 
	self recurringSchedule isWeekly ifTrue: [^(aDateAndTime year*100) + (aDateAndTime dayOfYear/7.0) ceiling ]. 
	self recurringSchedule isDaily ifTrue: [^(aDateAndTime year*1000) + aDateAndTime dayOfYear]. 
	self recurringSchedule isHourly ifTrue: [^(aDateAndTime year*100000 )+ (aDateAndTime dayOfYear*100) + aDateAndTime hour]. 
	self recurringSchedule isMinutely ifTrue: [^(aDateAndTime year*10000000) + (aDateAndTime dayOfYear*10000) + (aDateAndTime hour*100)+aDateAndTime minute]. 
	self recurringSchedule isSecondly  ifTrue: [^(aDateAndTime year*1000000000) + (aDateAndTime dayOfYear*1000000) + (aDateAndTime hour*10000)+(aDateAndTime minute*100)+aDateAndTime second]. 