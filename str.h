/*--------------------------------------------------------------------*/
/* str.h                                                              */
/* Author: John Matters                                               */
/*--------------------------------------------------------------------*/

#ifndef STR_H_
#define STR_H_

#include <assert.h>
#include <stddef.h>

#endif

/* Takes in a char array pcSrc and returns the length of the string 
in type (size_t) */
size_t Str_getLength(const char pcSrc[]);

/* Copies string pcSrc onto pcDest and returns a pointer to pcDest */
char* Str_copy(char pcDest[], const char pcSrc[]);

/* Copies pcSrc onto the end of pcDest, and returns a pointer to
pcDest */
char* Str_concat(char pcDest[], const char pcSrc[]);

/* Returns 0 if s1 and s2 are the same strings, 1 if the first 
different character is greater in s1, and -1 if it is greater in s2*/
int Str_compare(const char s1[], const char s2[]);

/* Returns a pointer to the first occurence of string needle in 
haystack. If haystack does not contain needle, returns NULL */
char* Str_search(const char haystack[], const char needle[]);

