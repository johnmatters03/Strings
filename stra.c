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
    int counter;

    assert(pcDest != NULL);
    assert(pcSrc != NULL);

    counter = 0;
    while (pcSrc[counter] != '\0') {
      pcDest[counter] = pcSrc[counter];
      counter++;
    }
    pcDest[counter] = '\0';
    return pcDest;
  }

char* Str_concat(char pcDest[], const char pcSrc[]) {
    /* counters to iterate through pcDest and pcSrc */
    int cDest;
    int cSrc;
    
    assert(pcDest != NULL);
    assert(pcSrc != NULL);

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
  int counter;
  
  assert(s1 != NULL);
  assert(s2 != NULL);
  
  counter = 0;

  while (s1[counter] != '\0' || s2[counter] != '\0') {
    if (s1[counter] > s2[counter]) return 1;
    if (s1[counter] < s2[counter]) return -1;
    counter++;
  }
  return 0;
}

char* Str_search(const char haystack[], const char needle[]) {
  int index;
  int needle_index;
  
  assert(haystack != NULL);
  assert(needle != NULL);
  if (needle[0] == '\0') return (char*) &haystack[0];

  index = 0;

  /* iterate through each element of haystack to check needle */
  while (haystack[index] != '\0') {
    needle_index = 0;
    while (needle[needle_index] != '\0' && 
    haystack[needle_index + index] != '\0') {
      if (needle[needle_index] != haystack[needle_index + index]) break;
      needle_index++;
    }
    if (needle[needle_index] == '\0') return (char*) &haystack[index];
    index++;
  }
  return NULL;
}