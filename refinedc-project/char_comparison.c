#include <stdbool.h>
#include <refinedc.h>





int strcmp(const char *s1, const char *s2) {
  int ret = 0;

  while (!(ret = *(unsigned char *) s1 - *(unsigned char *) s2) && *s2) ++s1, ++s2;

  if (ret < 0)

    ret = -1;
  else if (ret > 0)

    ret = 1 ;

  return ret;
}



[[rc::parameters("c : nat")]]
[[rc::args("c @ int<u8>")]]
[[rc::returns("{bool_decide (c = 97%nat)} @ builtin_boolean")]]
bool equals_a(char c) {
    return c == 97;
}

