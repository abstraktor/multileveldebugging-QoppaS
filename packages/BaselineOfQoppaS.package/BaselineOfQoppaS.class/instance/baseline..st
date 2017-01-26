as yet unclassified
baseline: spec
  <baseline>
	spec
		for: #common
		do: [
			spec
				baseline: 'Ohm' with: [ spec repository:  'github://hpi-swa/ohm-s:update-to-v0.86/packages' ];
				package: 'QoppaS' with: [spec requires: #('libraries')];
				package: 'QoppaS-Tests' with: [spec requires: #('libraries')];
				yourself.
			spec
				group: 'default' with: #('QoppaS');
				group: 'libraries' with: #('Ohm');
				group: 'TravisCI' with: #('QoppaS') ];
				yourself