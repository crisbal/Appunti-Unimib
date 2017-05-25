# Automi a stati finiti deterministici

## Definizione informale

An automaton is supposed to run on some given sequence of inputs in discrete time steps. An automaton gets one input every time step that is picked up from a set of symbols or letters, which is called an alphabet. At any time, the symbols so far fed to the automaton as input, form a finite sequence of symbols, which finite sequences are called words. An automaton contains a finite set of states. At each instance in time of some run, the automaton is in one of its states. At each time step when the automaton reads a symbol, it jumps or transitions to another state that is decided by a function that takes the current state and symbol as parameters. This function is called the transition function. The automaton reads the symbols of the input word one after another and transitions from state to state according to the transition function, until the word is read completely. Once the input word has been read, the automaton is said to have stopped and the state at which automaton has stopped is called the final state. Depending on the final state, it's said that the automaton either accepts or rejects an input word. There is a subset of states of the automaton, which is defined as the set of accepting states. If the final state is an accepting state, then the automaton accepts the word. Otherwise, the word is rejected. The set of all the words accepted by an automaton is called the "language of that automaton". Any subset of the language of an automaton is a language recognized by that automaton.

 In short, an automaton is a mathematical object that takes a word as input and decides either to accept it or reject it. Since all computational problems are reducible into the accept/reject question on words (all problem instances can be represented in a finite length of symbols), automata theory plays a crucial role in computational theory.

## Definizione formale

Un automa a stati finiti deterministico (DFA) è costituito da:

* Un insieme finito di stati, $Q$.
* Un insieme finito di simboli di input, $\Sigma$.
* Una funzione di transizione $\delta$, che ha come parametro uno stato ed un simbolo e ritorna uno stato.
* Uno stato di partenza, appartenente a $Q$
* Un insieme di stati accettanti, sottoinsieme di $Q$.

$$A = (Q, \Sigma, \delta, q_0, F)$$

## La funzione di transizione estesa

$\delta^*$ è detta funzione di transizione estesa. Essa prende in input uno stato e una stringa e ritorna uno stato.

E' definita per induzione come segue:

\begin{definition}
\end{definition}

* Caso base: $\delta^*(q,\lambda) = q$
* Passo induttivo: suppniamo $w = xa$, quindi: $$\delta^*(q,w) = \delta(\delta^*(q,x),a)$$


## Linguaggio dei DFA

Dato un DFA $A$, chiamiamo $L(A)$ il linguaggio accettato da $A$, cioè: $$L(A) = \{w | \delta^*(q_0,w) \in F\}$$

Tutti i linguaggi accettabili da un DFA qualsiasi sono **linguaggi regolari**.

