# 0 "stra.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "stra.c"





# 1 "str.h" 1
# 9 "str.h"
# 1 "/usr/include/assert.h" 1 3 4
# 35 "/usr/include/assert.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 392 "/usr/include/features.h" 3 4
# 1 "/usr/include/features-time64.h" 1 3 4
# 20 "/usr/include/features-time64.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 21 "/usr/include/features-time64.h" 2 3 4
# 1 "/usr/include/bits/timesize.h" 1 3 4
# 19 "/usr/include/bits/timesize.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 20 "/usr/include/bits/timesize.h" 2 3 4
# 22 "/usr/include/features-time64.h" 2 3 4
# 393 "/usr/include/features.h" 2 3 4
# 490 "/usr/include/features.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 551 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 552 "/usr/include/sys/cdefs.h" 2 3 4
# 1 "/usr/include/bits/long-double.h" 1 3 4
# 553 "/usr/include/sys/cdefs.h" 2 3 4
# 491 "/usr/include/features.h" 2 3 4
# 514 "/usr/include/features.h" 3 4
# 1 "/usr/include/gnu/stubs.h" 1 3 4




# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 6 "/usr/include/gnu/stubs.h" 2 3 4


# 1 "/usr/include/gnu/stubs-lp64.h" 1 3 4
# 9 "/usr/include/gnu/stubs.h" 2 3 4
# 515 "/usr/include/features.h" 2 3 4
# 36 "/usr/include/assert.h" 2 3 4
# 64 "/usr/include/assert.h" 3 4




# 67 "/usr/include/assert.h" 3 4
extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));


extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));




extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



# 10 "str.h" 2
# 1 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 1 3 4
# 143 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 209 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 321 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 11 "str.h" 2






# 16 "str.h"
size_t Str_getLength(const char pcSrc[]);


char* Str_copy(char pcDest[], const char pcSrc[]);



char* Str_concat(char pcDest[], const char pcSrc[]);



int Str_compare(const char s1[], const char s2[]);



char* Str_search(const char haystack[], const char needle[]);
# 7 "stra.c" 2

size_t Str_getLength(const char pcSrc[])
  {
    size_t uLength = 0;

    
# 12 "stra.c" 3 4
   ((
# 12 "stra.c"
   pcSrc != 
# 12 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 12 "stra.c"
   "pcSrc != NULL"
# 12 "stra.c" 3 4
   , "stra.c", 12, __extension__ __PRETTY_FUNCTION__))
# 12 "stra.c"
                        ;
    while (pcSrc[uLength] != '\0') uLength++;
    return uLength;
  }

char* Str_copy(char pcDest[], const char pcSrc[])
  {
    int counter;

    
# 21 "stra.c" 3 4
   ((
# 21 "stra.c"
   pcDest != 
# 21 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 21 "stra.c"
   "pcDest != NULL"
# 21 "stra.c" 3 4
   , "stra.c", 21, __extension__ __PRETTY_FUNCTION__))
# 21 "stra.c"
                         ;
    
# 22 "stra.c" 3 4
   ((
# 22 "stra.c"
   pcSrc != 
# 22 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 22 "stra.c"
   "pcSrc != NULL"
# 22 "stra.c" 3 4
   , "stra.c", 22, __extension__ __PRETTY_FUNCTION__))
# 22 "stra.c"
                        ;

    counter = 0;
    while (pcSrc[counter] != '\0') {
      pcDest[counter] = pcSrc[counter];
      counter++;
    }
    pcDest[counter] = '\0';
    return pcDest;
  }

char* Str_concat(char pcDest[], const char pcSrc[]) {

    int cDest;
    int cSrc;

    
# 38 "stra.c" 3 4
   ((
# 38 "stra.c"
   pcDest != 
# 38 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 38 "stra.c"
   "pcDest != NULL"
# 38 "stra.c" 3 4
   , "stra.c", 38, __extension__ __PRETTY_FUNCTION__))
# 38 "stra.c"
                         ;
    
# 39 "stra.c" 3 4
   ((
# 39 "stra.c"
   pcSrc != 
# 39 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 39 "stra.c"
   "pcSrc != NULL"
# 39 "stra.c" 3 4
   , "stra.c", 39, __extension__ __PRETTY_FUNCTION__))
# 39 "stra.c"
                        ;

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

  
# 59 "stra.c" 3 4
 ((
# 59 "stra.c"
 s1 != 
# 59 "stra.c" 3 4
 ((void *)0)) ? (void) (0) : __assert_fail (
# 59 "stra.c"
 "s1 != NULL"
# 59 "stra.c" 3 4
 , "stra.c", 59, __extension__ __PRETTY_FUNCTION__))
# 59 "stra.c"
                   ;
  
# 60 "stra.c" 3 4
 ((
# 60 "stra.c"
 s2 != 
# 60 "stra.c" 3 4
 ((void *)0)) ? (void) (0) : __assert_fail (
# 60 "stra.c"
 "s2 != NULL"
# 60 "stra.c" 3 4
 , "stra.c", 60, __extension__ __PRETTY_FUNCTION__))
# 60 "stra.c"
                   ;

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

  
# 76 "stra.c" 3 4
 ((
# 76 "stra.c"
 haystack != 
# 76 "stra.c" 3 4
 ((void *)0)) ? (void) (0) : __assert_fail (
# 76 "stra.c"
 "haystack != NULL"
# 76 "stra.c" 3 4
 , "stra.c", 76, __extension__ __PRETTY_FUNCTION__))
# 76 "stra.c"
                         ;
  
# 77 "stra.c" 3 4
 ((
# 77 "stra.c"
 needle != 
# 77 "stra.c" 3 4
 ((void *)0)) ? (void) (0) : __assert_fail (
# 77 "stra.c"
 "needle != NULL"
# 77 "stra.c" 3 4
 , "stra.c", 77, __extension__ __PRETTY_FUNCTION__))
# 77 "stra.c"
                       ;
  if (needle[0] == '\0') return (char*) &haystack[0];

  index = 0;


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
  return 
# 93 "stra.c" 3 4
        ((void *)0)
# 93 "stra.c"
            ;
}
