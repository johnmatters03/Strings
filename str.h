#ifndef STR_H_
#define STR_H_

#include <assert.h>
#include <stddef.h>

size_t Str_getLength(const char pcSrc[]);

char* Str_copy(char pcDest[], const char pcSrc[]);

char* Str_concat(char s1[], const char s2[]);

int Str_compare(const char s1[], const char s2[]);

char* Str_search(const char haystack[], const char needle[]);

#endif // STR_H_
