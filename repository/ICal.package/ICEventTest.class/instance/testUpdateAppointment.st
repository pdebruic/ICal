tests
testUpdateAppointment
	| appEvent |
	appEvent := ICEvent title: 'meeting'.
	calendar addEvent: appEvent.
	appEvent updateEventWith: appointment1.
	self assert: appEvent title = appointment1 title.
	self assert: appEvent category == appointment1 category.
	self assert: appEvent text = appointment1 text.
	self assert: appEvent status = appointment1 status.
	self assert: appEvent priority = appointment1 priority.
	self assert: appEvent tsCreated = appointment1 tsCreated.
	self assert: appEvent tsModified = appointment1 tsModified.
	self assert: appEvent version = appointment1 version.
	self assert: appEvent startDateAndTime = appointment1 startDateAndTime.
	self assert: appEvent endDateAndTime = appointment1 endDateAndTime.
	self assert: appEvent hasAlert = appointment1 hasAlert