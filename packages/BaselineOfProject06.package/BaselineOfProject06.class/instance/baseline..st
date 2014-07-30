as yet unclassified
baseline: spec
    <baseline>
    spec
        for: #'common' do: [
            spec
                package: 'PetitParser' with: 
			[ spec
				file: 'PetitParser-lr.228';
       				repository: 'http://source.lukas-renggli.ch/petit';
				yourself ];
                package: 'TextLint-Model' with: [ spec requires: 'PetitParser' ];
                package: 'TextLint-View';
                package: 'TextLint-Tests' with: [
                    spec requires: #('default')];
                yourself.
            spec
                group: 'default' with: #('TextLint-Model');
                group: 'Tests' with: #('TextLint-Tests');
                group: 'TravisCI' with: #('Tests');
                yourself]
