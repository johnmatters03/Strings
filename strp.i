# 0 "strp.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "strp.c"





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
# 7 "strp.c" 2

size_t Str_getLength(const char *pcSrc)
{
    const char *pcEnd;
    
# 11 "strp.c" 3 4
   ((
# 11 "strp.c"
   pcSrc != 
# 11 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 11 "strp.c"
   "pcSrc != NULL"
# 11 "strp.c" 3 4
   , "strp.c", 11, __extension__ __PRETTY_FUNCTION__))
# 11 "strp.c"
                        ;
    pcEnd = pcSrc;
    while (*pcEnd != '\0') pcEnd++;
    return (size_t) (pcEnd-pcSrc);
}

char* Str_copy(char * const pcDest, const char * pcSrc)
{
    char *iter;
    
# 20 "strp.c" 3 4
   ((
# 20 "strp.c"
   pcDest != 
# 20 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 20 "strp.c"
   "pcDest != NULL"
# 20 "strp.c" 3 4
   , "strp.c", 20, __extension__ __PRETTY_FUNCTION__))
# 20 "strp.c"
                         ;
    
# 21 "strp.c" 3 4
   ((
# 21 "strp.c"
   pcSrc != 
# 21 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 21 "strp.c"
   "pcSrc != NULL"
# 21 "strp.c" 3 4
   , "strp.c", 21, __extension__ __PRETTY_FUNCTION__))
# 21 "strp.c"
                        ;
    iter = pcDest;
    while(*pcSrc != '\0') {
        *iter = *pcSrc;
        iter++;
        pcSrc++;
    }
    *iter = '\0';
    return pcDest;
}

char* Str_concat(char * const pcDest, const char * pcSrc)
{
    char *iter;
    
# 35 "strp.c" 3 4
   ((
# 35 "strp.c"
   pcDest != 
# 35 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 35 "strp.c"
   "pcDest != NULL"
# 35 "strp.c" 3 4
   , "strp.c", 35, __extension__ __PRETTY_FUNCTION__))
# 35 "strp.c"
                         ;
    
# 36 "strp.c" 3 4
   ((
# 36 "strp.c"
   pcSrc != 
# 36 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 36 "strp.c"
   "pcSrc != NULL"
# 36 "strp.c" 3 4
   , "strp.c", 36, __extension__ __PRETTY_FUNCTION__))
# 36 "strp.c"
                        ;
    iter = pcDest;
    while(*iter != '\0') iter++;
    while(*pcSrc != '\0') {
        *iter = *pcSrc;
        iter++;
        pcSrc++;
    }
    *iter = '\0';
    return pcDest;
}

int Str_compare(const char * s1, const char * s2)
{
    
# 50 "strp.c" 3 4
   ((
# 50 "strp.c"
   s1 != 
# 50 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 50 "strp.c"
   "s1 != NULL"
# 50 "strp.c" 3 4
   , "strp.c", 50, __extension__ __PRETTY_FUNCTION__))
# 50 "strp.c"
                     ;
    
# 51 "strp.c" 3 4
   ((
# 51 "strp.c"
   s2 != 
# 51 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 51 "strp.c"
   "s2 != NULL"
# 51 "strp.c" 3 4
   , "strp.c", 51, __extension__ __PRETTY_FUNCTION__))
# 51 "strp.c"
                     ;
    while (*s1 != '\0' || *s2 != '\0') {
        if (*s1 > *s2) return 1;
        if (*s1 < *s2) return -1;
        s1++;
        s2++;
    }
    return 0;
}

char* Str_search(const char * haystack, const char * needle) {
    char *hay_iter;
    char *needle_iter;

    
# 65 "strp.c" 3 4
   ((
# 65 "strp.c"
   haystack != 
# 65 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 65 "strp.c"
   "haystack != NULL"
# 65 "strp.c" 3 4
   , "strp.c", 65, __extension__ __PRETTY_FUNCTION__))
# 65 "strp.c"
                           ;
    
# 66 "strp.c" 3 4
   ((
# 66 "strp.c"
   needle != 
# 66 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 66 "strp.c"
   "needle != NULL"
# 66 "strp.c" 3 4
   , "strp.c", 66, __extension__ __PRETTY_FUNCTION__))
# 66 "strp.c"
                         ;

    if (*needle == '\0') return (char*)haystack;



    while (*haystack != '\0') {
        hay_iter = (char*)haystack;
        needle_iter = (char*)needle;
        while(*needle_iter != '\0' && *hay_iter != '\0') {
            if (*needle_iter != *hay_iter) break;
            needle_iter++;
            hay_iter++;
        }
        if (*needle_iter == '\0') return (char*)haystack;
        haystack++;
    }

    return 
# 84 "strp.c" 3 4
          ((void *)0)
# 84 "strp.c"
              ;
}
