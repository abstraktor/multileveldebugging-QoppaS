as yet unclassified
baseline: spec
  <baseline>
	spec
		for: #common
		do: [
			spec
				baseline: 'Vivide' with:
					[ spec repository: 'github://hpi-swa/vivide/repository' ];
				baseline: 'Ohm' with:
					[ spec repository: 'github://hpi-swa/Ohm-S/packages' ];
				package: 'QoppaS' with: [spec requires: #('libraries')];
				package: 'QoppaS-Tests' with: [spec requires: #('libraries')];
				yourself.
			spec
				group: 'default' with: #('QoppaS');
				group: 'libraries' with: #('Ohm' 'Vivide');
				group: 'TravisCI' with: #('QoppaS') ];
				yourself