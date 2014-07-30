as yet unclassified
baseline: spec
	<baseline>
	spec
		for: #'common' do: [
			 spec 
                		configuration: 'PetitParser config' 
                		with: [ 
                    			spec 
                        			className: 'ConfigurationOfPetitParser'; 
                        			repository: 'http://source.lukas-renggli.ch/petit' ]. 
            		spec	
            			import: 'PetitParser config'. 
      			spec
				package: 'TextLint-Model'with: [ spec requires: 'PetitParser' ] ];
				package: 'TextLint-View';
				package: 'TextLint-Tests' with: [
					spec requires: #('default')];
				yourself.
			spec
				group: 'default' with: #('TextLint-Model');
				group: 'Tests' with: #('TextLint-Tests');
				group: 'TravisCI' with: #('Tests');
				yourself]
