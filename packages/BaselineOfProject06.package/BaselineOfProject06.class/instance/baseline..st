as yet unclassified
baseline: spec
	<baseline>
	spec
		for: #'common' do: [
			spec
				package: 'TextLint-Model';
				package: 'TextLint-View';
				package: 'TextLint-Tests' with: [
					spec requires: #('default')];
				yourself.
			spec
				group: 'default' with: #('TextLint-Model');
				group: 'Tests' with: #('TextLint-Tests');
				group: 'TravisCI' with: #('Tests');
				yourself]
