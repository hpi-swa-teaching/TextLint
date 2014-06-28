Glamour
exportButtonOn: aBrowser

	aBrowser transmit 
		to: #export;
		from: #files;
		andShow: [ :a |			
			a actionList 
				act: [Transcript show: 'asd'] 
				entitled: 'Save';
				act: [Transcript show: 'dfdfdsfsdfsd'] entitled: 'Re-Check'.].
			
		^aBrowser
	
