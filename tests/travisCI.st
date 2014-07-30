| gitPath gitCache |
Transcript cr; show: 'travis---->travisCI.st'.

gitCache := 'git_cache'.
gitPath := (Smalltalk at: #'FileDirectory' ifAbsent: [  ])
  ifNil: [ ((Smalltalk at: #'FileSystem') workingDirectory / gitCache) pathString ]
  ifNotNil: [:fileDirectoryClass | (fileDirectoryClass default directoryNamed: gitCache ) fullName].

Metacello new
  baseline: 'Project06';
  repository: 'filetree://', gitPath, '/TextLint/packages';
  get.

Metacello new
  baseline: 'Project06';
  repository: 'filetree://', gitPath, '/TextLint/packages';
  load: 'TravisCI'.

"Run the tests"
TravisCIHarness
  value: #( 'BaselineOfProject06' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.
