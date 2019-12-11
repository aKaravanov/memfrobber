#define _GNU_SOURCE
#include <stdio.h>
#include <string.h>

void memfrobber(char* input) {
   size_t size = strlen(input);
   char word[size];
   strcpy(word, input);
   // printf("%s of size %d at loc %x\n", input, size, &input);
   memfrob(&word, size);
   printf("%s\n", word);
}
