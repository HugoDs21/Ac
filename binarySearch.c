#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>
#define MAX 100

int binarySearch(int a[], int min, int max, int x){
  if (max >= min) {
    int mid = min + (max - min)/2;

    if (a[mid] == x) {
      return mid;
    }

    if (a[mid] > x) {
      return binarySearch(a, min, mid - min, x);
    }
    return binarySearch(a, mid + min, max, x);
  }
  return -1;
}
int main(int argc, char const *argv[]) {
  int a[] = {2,3,4,10,40};
  int n = 5;
  int x = 10;
  int result = binarySearch(a,0, n-1, x);
  if (result == -1) {
    printf("False\n");
  } else {
    printf("True %d +1 \n", result);
  }
  return 0;
}
