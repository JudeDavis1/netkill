#include "networking.h"


void udp_stream(const char** host, int port, char** payload_buffer)
{
	int s;
	int cycle_count = 0;
	struct sockaddr_in server;

	if ((s = socket(AF_INET, SOCK_DGRAM, 0)) < 0)
        perror("SOCKET CREATION FAILED");

    server.sin_family = AF_INET;
    server.sin_port = htons(port);
    server.sin_addr.s_addr = inet_addr(*host);

    memset(server.sin_zero, '\0', sizeof(server.sin_zero));
	// No need to reconnect after each cycle
	// UDP doesn't use connections
    while (true)
    {
        sendto(s, *payload_buffer, strlen(*payload_buffer), 0, (struct sockaddr *)&server, sizeof(server));
        cycle_count++;

        if (cycle_count % 1000 == 0)
            printf("Sent: %d to %s\n", cycle_count, *host);
    }
	printf("poo");
	free(payload_buffer);
}

void tcp_http_stream(const char** host, int port, char* payload_buffer)
{
	int s;                        // Main socket
	int cycle_count = 0;          // The number of cycles the stream has completed
	struct sockaddr_in server;    // The server struct to define an actual destination server

	server.sin_family = AF_INET;
    server.sin_port = htons(port);
    server.sin_addr.s_addr = inet_addr(*host);

	memset(server.sin_zero, '\0', sizeof(server.sin_zero));

	while (true)
	{
		if ((s = socket(AF_INET, SOCK_STREAM, 0)) < 0)
			perror("SOCKET CREATION FAILED");
		
		if (connect(s, (struct sockaddr *)&server, sizeof(server)) < 0)
			perror("ERROR CONNECTING TO HOST");
		
		send(s, *payload_buffer, strlen(*payload_buffer), 0);
		cycle_count++;

        if (cycle_count % 1000 == 0)
            printf("Sent: %d to %s\n", cycle_count, *host);

		close(s);
	}
}
