int foo(int a) {
  int sum = 0;
  for (int i = 1; i <= a; i ++) {
    sum += i;
  }

  return (sum);
}


int main(void) {
  return (foo(100));
}
