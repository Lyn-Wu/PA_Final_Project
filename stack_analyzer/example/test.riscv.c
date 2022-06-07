
int foo1(int);
int foo2(int);

int foo1 (int a) {
  return (a == 0 ? a : a + foo2(a- 1));
}

int foo2 (int b) {
  return (b == 0 ? b : foo1(b - 1));
}

int main(void) {
  return (foo1(10));
}
