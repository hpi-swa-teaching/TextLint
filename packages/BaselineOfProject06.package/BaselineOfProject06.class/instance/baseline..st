as yet unclassified
baseline: spec
	<baseline>
	spec
		for: #'common' do: [
			spec
				package: 'PetitParser-Core';
				package: 'PetitParser-Parsers';
				package: 'PetitParser-Tools';
				package: 'TextLint-Model' with: [spec requires: #('parser')];
				package: 'TextLint-View' with: [spec requires: #('parser')];
				package: 'TextLint-Tests' with: [spec requires: #('default')];
				yourself.
			spec
				group: 'default' with: #('TextLint-Model');
				group: 'parser' with #('PetitParser-Core');
				group: 'parser' with #('PetitParser-Parsers');
				group: 'parser' with #('PetitParser-Tools');
				group: 'Tests' with: #('TextLint-Tests');
				group: 'TravisCI' with: #('Tests');
				yourself]
