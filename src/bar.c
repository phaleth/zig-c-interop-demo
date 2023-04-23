#include <stdio.h>

void dump_stack_trace(void);
int sum_array(int *ptr, size_t len);

void foo(int dump) {
  if (dump) {
    dump_stack_trace();
  }
}

int main(int argc, char *argv[]) {
  int arr[] = {1, 0, 4, 3, 10};
  int sum =
      sum_array(arr, sizeof(arr) / sizeof(int)); // assume pointer not decaying
  printf("sum: %d\n", sum);
  foo(argc > 1);
  return 0;
}
