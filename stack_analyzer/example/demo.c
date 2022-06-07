#include <stdio.h>

int foo(int a) {
  return (a == 0 ? a : a + foo(a) );
}


int main(void) {
  printf("[INFO] %d\n", foo(100));
  return (0);
}
