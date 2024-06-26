// Taken from https://codebrowser.dev/glibc/glibc/string/strcmp.c.html

/* Copyright (C) 1991-2022 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
#include <string.h>
#include <refinedc.h>
#include <stdio.h>


int arr[26];
// populated with ascii number representations
for(int i = 65; i <= 90; i++){
    arr[i - 65] = i;
}

/* Compare S1 and S2, returning less than, equal to or
   greater than zero if S1 is lexicographically less than,
   equal to or greater than S2.  */
[[rc::parameters("p1 : loc", "p2 : loc")]]
[[rc::args("p1 @&own<array<u8, {elts `at_type` (int u8)}>>")]]
[[rc::args("p2 @&own<array<u8, {elts `at_type` (int u8)}>>")]]

int strcmp (const char *p1, const char *p2) {
  // storing pointers in s1 and s2.
  const unsigned char *s1 = (const unsigned char *) p1;
  const unsigned char *s2 = (const unsigned char *) p2;
  unsigned char c1, c2;

  do {
      c1 = (unsigned char) *s1;
      c2 = (unsigned char) *s2;
      s1++;
      s2++;
      if (c1 == 0)
        return c1 - c2;
  }
  while (c1 == c2);

  return c1 - c2;
}
