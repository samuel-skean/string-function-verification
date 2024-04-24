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


// annotations
[[rc::parameters("s1 : loc", "elts : {list Z}", "n : nat")]]
[[rc::parameters("s2 : loc", "elts : {list Z}", "n : nat")]]
[[rc::args("ar @ &own<array<u8, {elts `at_type` (int u8)}>>", "n @ int<u8>")]]
[[rc::args("ar @ &own<array<u8, {elts `at_type` (int u8)}>>", "n @ int<u8>")]]

// make sure that they're arrays of one-byte ints
[[rc::ensures("own p1 : array<u8, {elts `at_type` (int u8)}>")]]
[[rc::ensures("own p1 : array<u8, {elts `at_type` (int u8)}>")]]

// 

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
