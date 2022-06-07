int foo(void) {
  int sum = 0;
  int arr[40960];
  for (int i = 0; i < 40960; i ++) {
    sum += arr[i];
  }
}


int main(void) {

  return (foo());
}
