actions
activate
 status := #ACTIVE.
Transcript cr; show: 'status changed to ', status;cr.
 self setAlarm: [self stop] at: event end.