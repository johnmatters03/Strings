/*--------------------------------------------------------------------*/
/* strp.c                                                             */
/* Author: John Matters                                               */
/*--------------------------------------------------------------------*/

# include "str.h"

size_t Str_getLength(const char *pcSrc)
{
    const char *pcEnd;
    assert(pcSrc != NULL);
    pcEnd = pcSrc;
    while (*pcEnd != '\0') pcEnd++;
    return (size_t) (pcEnd-pcSrc);
}

char* Str_copy(char * const pcDest, const char * pcSrc)
{
    char *iter;
    assert(pcDest != NULL);
    assert(pcSrc != NULL);
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
    assert(pcDest != NULL);
    assert(pcSrc != NULL);
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
    assert(s1 != NULL);
    assert(s2 != NULL);
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

    assert(haystack != NULL);
    assert(needle != NULL);

    if (*needle == '\0') return (char*)haystack;

    /* iterate through each element of haystack to check 
    needle */
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

    return NULL;
}