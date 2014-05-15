Glamour
filesPaneOn: aBrowser
	| parent |
	aBrowser transmit 
		to: #files; 
		andShow: [ :brow | 
			brow list 
				title: 'Files';
				format: [ :name | name allButFirst: parent pathName size + 1 ];
				sorted;
				display: [ :folder |
					((parent := folder) fullNamesOfAllFilesInSubtree 
						select: [ :each | #('.txt' '.tex' '.html') anySatisfy: [:ext | each endsWith: ext] ])]]