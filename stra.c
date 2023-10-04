#include "str.h"

size_t Str_getLength(const char pcSrc[])
  {
    size_t uLength = 0;
    assert(pcSrc != NULL);
    while (pcSrc[uLength] != '\0') uLength++;
    return uLength;
  }

char* Str_copy(char pcDest[], const char pcSrc[])
  {
    int counter;
    counter = 0;
    while (pcSrc[counter] != '\0') {
      pcDest[counter] = pcSrc[counter];
      counter++;
    }
    return pcDest;
  }

char* Str_concat(char dest[], const char src[]) {
    int cDest;
    int cSrc;
    cDest = 0;
    cSrc = 0;

    while (dest[cDest] != '\0') {
      cDest++;
    }
    while (src[cSrc] != '\0') {
      dest[cDest] = src[cSrc];
      cDest++;
      cSrc++;
    }

    return dest;
  }

int Str_compare(const char s1[], const char s2[]) {
  int counter;
  counter = 0;

  while (s1[counter] != '\0' && s2[counter] != '\0') {
    if (s1[counter] > s2[counter]) return 1;
    if (s1[counter] < s2[counter]) return -1;
  }
  return 0;
}

