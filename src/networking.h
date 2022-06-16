#ifndef NETWORKING_H
#define NETWORKING_H

#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdbool.h>
#include <arpa/inet.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <sys/socket.h>

#define NK_OK 1
#define NK_ERROR 0
#define NK_FLAGS_NONE 0

#define BUFFER_SIZE 1490


// The main socket struct to keep things clean
typedef struct
{
    int inet;
    int port;
    const char** host;
    enum __socket_type proto;
    struct sockaddr_in* server;
} nk_socket_type;

// Client utils for sending data for different protocols
void udp_stream(const char** host, int port, char** payload_buffer);
void tcp_http_stream(const char** host, int port, char** payload_buffer);

// Socket handler so that we don't have to keep repeating socket code.
int nk_sock_init(nk_socket_type* type);
int nk_send_pkt(int s, nk_socket_type* type, char** buffer);


#endif