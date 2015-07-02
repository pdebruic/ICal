baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec 
			baseline: 'Chronos' with: [
				spec repository: 'filetree:///opt/git/tcs1/Chronos' ];
			baseline: 'CommandShell' with: [
				spec repository: 'filetree:///opt/git/tcs1/CommandShell'; loads: #('Piping' ) ];
			baseline: 'HTTPAPIClient' with: [
				spec repository: 'filetree:///opt/git/tcs1/HTTPAPIClient' ].
		spec 
			package: 'ICal-Core' with: [
				spec requires: #('CommandShell' ). ];
			package: 'ICal-URL' with: [
				spec requires: #('ICal-Core' ). ];
			package: 'ICal-SqueakPharo-Core' with: [
				spec requires: #('ICal-URL' ). ];
			package: 'ICal-Tests' with: [
				spec requires: #('ICal-SqueakPharo-Core' ). ];
			package: 'ICalChronos' with: [
				spec requires: #('ICal-SqueakPharo-Core' 'Chronos' ). ];
			package: 'ICalMagritte' with: [
				spec requires: #('ICal-SqueakPharo-Core' ). ];
			package: #'ICal-HTTPAPIClient' with: [
				spec requires: #('HTTPAPIClient' 'default' ). ].
		spec 
			group: 'Tests' with: #('ICal-Tests' );
			group: 'ICal-Magritte' with: #('ICalMagritte' );
			group: 'ICal-Chronos' with: #('ICalChronos' );
			group: 'default' with: #('ICal-SqueakPharo-Core' );
			group: 'HTTP' with: #(#'ICal-HTTPAPIClient' ). ].
