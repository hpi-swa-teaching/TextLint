test
testLatexListingTokenziation
	| document |
	document := self parse: '\begin{lstlisting}fucking morron\end{lstlisting}
\emph{common}' tokenizer: TLLatexTokenizer.

	self assert: document paragraphs size = 1.
	self assert: document sentences size = 1.
	self assert: document words size = 1.
	self assert: document words first text = 'common'