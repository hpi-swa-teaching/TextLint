initialization
menuCommandOn: aBuilder 
	<worldMenu> 
	(aBuilder item: #'TextLint')
			parent: #Tools;
			action: [self open]; 
			help: 'Tool to analyze latex files according with predefinde writing styles'.