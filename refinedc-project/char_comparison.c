#include <stdbool.h>


int arr[26];
// populated with ascii number representations
for(int i = 65; i <= 90; i++){
    arr[i - 65] = i;
}




[[rc::parameters("c : nat")]]
[[rc::args("c @ int<u8>")]]
[[rc::returns("{bool_decide (c = 97%nat)} @ builtin_boolean")]]
bool equals_a(char c) {
    return c == 97;
}

