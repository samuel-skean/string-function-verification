#include <stdbool.h>

[[rc::parameters("c : nat")]]
[[rc::args("c @ int<u8>")]]
[[rc::returns("{bool_decide (c = 97%nat)} @ builtin_boolean")]]
bool equals_a(char c) {
    return c == 97;
}

