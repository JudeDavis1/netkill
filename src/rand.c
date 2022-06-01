#include "rand.h"

#include <time.h>
#include <stdio.h>
#include <stdlib.h>


unsigned char* nk_rand_bytes(int buffer_size)
{
    int min = 35;
    int max = 255;
    int diff = max - min;

    srand((unsigned int) time(NULL));
    unsigned char* buffer = (unsigned char*)malloc(buffer_size * sizeof(char));

    for (int i = 0; i < buffer_size; i++)
    {
        buffer[i] = (int)(((double) (diff + 1) / RAND_MAX) * rand() + min);
    }
    
    return buffer;
}
