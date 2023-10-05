/*--------------------------------------------------------------------*/
/* stra.c                                                             */
/* Author: John Matters                                               */
/*--------------------------------------------------------------------*/

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
    assert(pcDest != NULL);
    assert(pcSrc != NULL);
    int counter;
    counter = 0;
    while (pcSrc[counter] != '\0') {
      pcDest[counter] = pcSrc[counter];
      counter++;
    }
    pcDest[counter] = '\0';
    return pcDest;
  }

char* Str_concat(char pcDest[], const char pcSrc[]) {
    assert(pcDest != NULL);
    assert(pcSrc != NULL);
    int cDest;
    int cSrc;
    cDest = 0;
    cSrc = 0;

    while (pcDest[cDest] != '\0') {
      cDest++;
    }
    while (pcSrc[cSrc] != '\0') {
      pcDest[cDest] = pcSrc[cSrc];
      cDest++;
      cSrc++;
    }
    pcDest[cDest] = '\0';
    return pcDest;
  }

int Str_compare(const char s1[], const char s2[]) {
  assert(s1 != NULL);
  assert(s2 != NULL);
  int counter;
  counter = 0;

  while (s1[counter] != '\0' || s2[counter] != '\0') {
    if (s1[counter] > s2[counter]) return 1;
    if (s1[counter] < s2[counter]) return -1;
    counter++;
  }
  return 0;
}

char* Str_search(const char haystack[], const char needle[]) {
  assert(haystack != NULL);
  assert(needle != NULL);
  if (needle[0] == '\0') return (char*) &haystack[0];
  int index;
  int cNeedle;
  index = 0;
  while (haystack[index] != '\0') {
    cNeedle = 0;
    while (needle[cNeedle] != '\0' && haystack[cNeedle + index] != '\0') {
      if (needle[cNeedle] != haystack[cNeedle + index]) break;
      cNeedle++;
    }
    if (needle[cNeedle] == '\0') return (char*) &haystack[index];
    index++;
  }
  return NULL;
}