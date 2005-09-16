exporting
exportAppointments
	self calendar appointments 
		do: [:appointment | self exportAppointment: appointment]