// Taken from: https://github.com/gcc-mirror/gcc/blob/master/libiberty/strncmp.c

/* strncmp -- compare two strings, stop after n bytes.
   This function is in the public domain.  */

/*

@deftypefn Supplemental int strncmp (const char *@var{s1}, @
  const char *@var{s2}, size_t @var{n})

Compares the first @var{n} bytes of two strings, returning a value as
@code{strcmp}.

@end deftypefn

*/

#include <stddef.h>

@rc::import strncmp.v from proofs.strncmp.v

// annotations
// these parameters are supposed to represent the two arrays,
// with n being natural numbers for both.
// check if defining n in arguments differently changes things.
[[rc::parameters("s1 : loc", "elts : {list Z}", "n : nat")]]
[[rc::parameters("s2 : loc", "elts : {list Z}", "n : nat")]]

[[rc::args("s1 @ &own<array<u8, {elts `at_type` (int u8)}>>", "s1 @ &own<array<u8, {elts `at_type` (int u8)}>>", "n @ int<u8>")]]

// make sure that they're arrays of one-byte ints
[[rc::ensures("own p1 : array<u8, {elts `at_type` (int u8)}>")]]
[[rc::ensures("own p1 : array<u8, {elts `at_type` (int u8)}>")]]
// return, using refinement type '@'
[[rc::returns("i @ int<u8>")]]

// tactics to apply from strncmp.v
[[rc::tactics("all: try rewrite compare_strings; solve_goal).")]]
// alternatively use the ascii version for faster performance, although it might not be necessary
[[rc::tactics("all: try rewrite eq_string; solve_goal).")]]
int strncmp(const char *s1, const char *s2, register size_t n)
{
  register unsigned char u1, u2;

  while (n > 0)
    {
      n--;
      u1 = (unsigned char) *s1;
      u2 = (unsigned char) *s2;
      s1++;
      s2++;

      if (u1 != u2)
        return u1 - u2;
      if (u1 == 0)
        return 0;
    }
  return 0;
}
