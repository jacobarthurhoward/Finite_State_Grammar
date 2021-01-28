# Finite State Grammar

One requirement that a grammar must certainly meet is that it be finite.

Hence, the grammar cannot simply a list of all morpheme (orword) sequences, since there are infinitely many sequences, since there are infintely many of these.

A familiar communication theoritic model for language suggests a way out of this difficulty.

Suppose that we have a machine that can be in any of a finite number of different internal states, and suppose that this machine switches from one state to another by producing a certain symbol (let us say, an English word).

One of these states is an Initial State; another is a Final State.

Suppose that the machine begins in the initial state, runs through a sequence of states (producing a word with each transition), and ends in the final state.

Each such machine thus defines a certain language; namely, the set of sentences that can be produced this way.

Any language that can be produced by a machine of this sort we call a Finite State Language; and we call the machine itself a Finite State Grammar.

A Finite State Grammar can be represented graphically in the form of a "state diagram"

"insert diagram 1"

We can extend this grammar to produce an infinite number of sentences by adding closed loops.

"insert diagram 2"
