as yet unclassified
baseline: spec
	<baseline>
	spec
		for: #'common' do: [
			spec
				package: 'Project06-Model';
				package: 'Project06-View';
				package: 'Project06-Tests' with: [
					spec requires: #('default')];
				yourself.
			spec
				group: 'default' with: #('Project06-Model');
				group: 'Tests' with: #('Project06-Tests');
				group: 'TravisCI' with: #('Tests');
				yourself]