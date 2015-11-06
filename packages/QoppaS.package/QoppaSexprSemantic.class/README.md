A S-Expression is notation for Cons, a two-field recursive datastructure. Variables get evaluated.

A QoppaSexprSemantic interprets the written SExpressions as program description and operates the first entry of such a linked list to the rest of it.

# Instance Variables

## environment ##

An environment is a cons-list of stackframes which are each a cons-list of key-value pairs which are a list of two cons.

## globalEnvironment ##

`globalEnv` is the initial environment that is present at startup of Qoppa. When a vau is entered, a new environment is created that is a linked list of the method frame and the outer environment.


