# CS 472 Final Project
--------------------------------------------------------------------------------------
## Samuel Effendy and Samuel Skean

Files included:
- README.md
- strncmp.v
- strncmp.c


Most important definitions:
- eq_ascii - function definition using eqb to compare each ascii character one by one in the string, 8 characters maximum
- eq_string - fixpoint to be called and rewritten in strncmp.c as part of tactics
- string_dec - an alternative to eq_string. it is included in the Coq library instead 
of being self-defined.

What we achieved:
- using rc::tactics to rewrite the strncmp function in the C library in terms of Coq 
string function in order to prove its correctness.
- successfully proved correctness of a small int comparison C program.

Future work/Unfinished:
- Successfully checking the strncmp.c function. We ran into issues with annotations and
importing files, and there is limited documentation online for our specific problems.

Wrap-up:
We learned a great deal about using an experimental, powerful automated
reasoning tool for C programs. We also learned, as always, to get started
sooner and to expect many set-backs. But as a capstone to this class, being
aware of tools like this and Prusti, and having some knowledge of how to get
them to work, is probably the best takeaway we could've expected. Proving
correctness, or even coming close, is a powerful drug.
