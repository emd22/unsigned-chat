#include <client.h>

#include <stdio.h>
#include <string.h> //strerror, etc.
#include <errno.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>
#include <stdlib.h>
#include <stdint.h>
#include <stddef.h>
#include <unistd.h>

client_t client_start(char *host, int port) {
    char buffer[256];
    int sock_fd = socket(AF_INET, SOCK_STREAM, 0);
    
    if (sock_fd < 0) {
        printf("Error opening socket: %s\n", strerror(errno));
    }

    struct hostent *server;
    server = gethostbyname(host);

    if (server == NULL) {
        printf("Error no such server as %s: %s\n", host, strerror(errno));
        exit(EXIT_FAILURE);
    }

    struct sockaddr_in server_addr;
    bzero((char *)&server_addr, sizeof(server_addr));

    server_addr.sin_family = AF_INET;

    bcopy((char *)server->h_addr, 
         (char *)&server_addr.sin_addr.s_addr,
         server->h_length);

    server_addr.sin_port = htons(port);

    if (connect(sock_fd, 
                (struct sockaddr *)&server_addr, 
                sizeof(server_addr)) < 0) {
        printf("Error connecting: %s\n", strerror(errno));
    }
    
    client_t client;
    client.port    = port;
    client.host    = host;
    client.sock_fd = sock_fd;
    
    return client;
}

void client_send(uint8_t *data, uint8_t data_size, client_t *client) {
    int status = 0;
    status = write(client->sock_fd, &data_size, 1);
    status = write(client->sock_fd, data, data_size);

    if (status < 0) {
        printf("Error writing to socket: %s\n", strerror(errno));
    }
}

void client_retrieve(uint8_t *buffer, uint8_t length, client_t *client) {
    memset(buffer, '\0', length); //make sure null terminated
    
    int status = 0;
    status = read(client->sock_fd, buffer, length);

    if (status < 0) {
        printf("Error reading from socket: %s\n", strerror(errno));
    }
}

int client_poll_message(client_t *client, uint8_t *len) {
    uint8_t length = 0;
    client_retrieve(&length, 1, client);

    if (length > 0) {
        *len = length;
        return 1;
    }
    return 0;
}