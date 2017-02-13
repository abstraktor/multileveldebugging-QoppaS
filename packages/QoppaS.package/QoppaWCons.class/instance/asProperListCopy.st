copying
asProperListCopy
	| copy |
	copy := self copy. "only car and cdr pointers copied!"
	cdr ifNotNil: [copy cdr: cdr asProperListCopy].
	^ copy