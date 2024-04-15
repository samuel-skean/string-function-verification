[[rc::returns("{97} @ int<u8>")]]
char always_returns_a() {
    return 97;
}

[[rc::returns("{0} @ int<i32>")]]
int main() {
    return 0;
}
