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

#define BUFFER_SIZE 1490

void UDP_stream(const char** host, int port, char** payload_buffer);
void TCP_HTTP_stream(const char** host, int port, char** payload_buffer);

#endif