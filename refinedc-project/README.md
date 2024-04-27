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
- Successfully check the strncmp.c function. We ran into issues with annotations and
importing files, and there is limited documentation online for our specific problems.
