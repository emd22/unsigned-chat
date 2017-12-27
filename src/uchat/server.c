#include <server.h>
#include <client.h>

#include <strings.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <unistd.h>
#include <errno.h>

server_t server_start(int port) {
    struct sockaddr_in server_addr, client_addr;
    int sock_fd = socket(AF_INET, SOCK_STREAM, 0);

    if (sock_fd < 0) {
        printf("Error opening socket: %s\n", strerror(errno));
    }

    bzero((char *)&server_addr, sizeof(server_addr));
    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = INADDR_ANY;
    server_addr.sin_port = htons(port);

    int binding = bind(sock_fd, (struct sockaddr *) &server_addr, sizeof(server_addr));

    if (binding < 0) {
        printf("Error binding: %s\n", strerror(errno));
        exit(1);
    }

    listen(sock_fd, 5);
    int client_len = sizeof(client_addr);
    int new_sock_fd = accept(sock_fd, (struct sockaddr *)&client_addr, &client_len);

    if (new_sock_fd < 0) {
        printf("Error with accepting: %s\n", strerror(errno));
    }

    server_t server;
    server.new_sock_fd = new_sock_fd;
    server.sock_fd = sock_fd;

    return server;
}

void server_retrieve_data(uint8_t *buffer, uint8_t length, server_t *server) {
    int status = 0;

    status = read(server->new_sock_fd, buffer, length);

    if (status < 0) {
        printf("Error reading from socket: %s\n", strerror(errno));
        exit(1);
    }
}

void server_write_raw_data(uint8_t *buffer, uint8_t len, server_t *server) {
     int status = 0;
     status = write(server->new_sock_fd, buffer, len);
     
     if (status < 0) {
        printf("Error writing to socket: %s\n", strerror(errno));
        exit(1);
     }
}

void server_write_data(uint8_t *buffer, uint8_t len, server_t *server) {
    server_write_raw_data(&len, 1, server);
    server_write_raw_data(buffer, len, server);
}

int server_poll_data(server_t *server, client_t *client, uint8_t *len) {
    server_retrieve_data(len, 1, server);

    if ((*len) > 0) {
        uint8_t zero = 0;
        client_send(&zero, 1, client);
        return 1;
    }

    return 0;
}