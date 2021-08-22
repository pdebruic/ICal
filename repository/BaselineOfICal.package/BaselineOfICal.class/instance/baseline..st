baselines
baseline: spec
<baseline>
	spec
		for: #common
		do: [ spec
				project: 'Chronos'
					with: [ spec
						className: 'ConfigurationOfChronos';
						versionString: #stable;
						repository: 'http://www.squeaksource.com/MetacelloRepository' ];
				baseline: 'HTTPAPIClient'
					with: [ spec repository: 'github://pdebruic/HTTPAPIClient/repository' ].
			spec
				package: 'ICal-URL' with: [ spec requires: #('ICal-Core') ];
				package: 'ICal-znurl' with: [ spec requires: #('ICal-Core') ];
				package: 'ICal-HTTPAPIClient'
					with: [ spec requires: #('HTTPAPIClient' 'default') ].
			spec
				group: 'Tests' with: #('ICal-Tests');
				group: 'ICal-Magritte' with: #('ICalMagritte');
				group: 'ICal-Chronos' with: #('ICalChronos');
				group: 'HTTP' with: #('ICal-HTTPAPIClient') ].
	spec
		for: #squeakCommon
		do: [ spec
				project: 'CommandShell'
				with: [ spec
						className: 'ConfigurationOfCommandShell';
						versionString: #stable;
						loads: #('Piping');
						repository: 'http://www.squeaksource.com/MetacelloRepository' ].
			spec
				package: 'ICal-Core' with: [ spec requires: #('CommandShell') ];
				package: 'ICal-SqueakPharo-Core'
					with: [ spec requires: #('ICal-URL') ];
				package: 'ICal-Tests'
					with: [ spec requires: #('ICal-SqueakPharo-Core') ];
				package: 'ICalChronos'
					with: [ spec requires: #('ICal-SqueakPharo-Core' 'Chronos') ];
				package: 'ICalMagritte'
					with: [ spec requires: #('ICal-SqueakPharo-Core') ].
			spec
				group: 'default' with: #('ICal-SqueakPharo-Core');
				group: 'Core' with: #('ICal-SqueakPharo-Core') ].
	spec
		for: #squeak
		do: [ spec
				removePackage: 'ICal-znurl';
				requires: #('ICal-URL') ].
	spec
		for: #gemstone
		do: [ spec
				package: 'ICal-Core';
				package: 'ICal-Gemstone-Core'
					with: [ spec requires: #('ICal-URL') ];
				package: 'ICal-Tests'
					with: [ spec requires: #('ICal-Gemstone-Core') ];
				package: 'ICalChronos'
					with: [ spec requires: #('ICal-Gemstone-Core' 'Chronos') ];
				package: 'ICalMagritte'
					with: [ spec requires: #('ICal-Gemstone-Core') ].
			spec
				group: 'default' with: #('ICal-Gemstone-Core');
				group: 'Core' with: #('ICal-Gemstone-Core') ]