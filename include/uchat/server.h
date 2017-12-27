#ifndef SERVER_H
#define SERVER_H

#include <stdint.h>
#include <stddef.h>
#include <client.h>

#define SERVER_EXIT_1 '!'
#define SERVER_EXIT_2 'K'

typedef struct {
    int new_sock_fd;
    int sock_fd;
} server_t;

server_t server_start(int port);
void server_retrieve_data(uint8_t *buffer, uint8_t length, server_t *server);
int server_poll_data(server_t *server, client_t *client, uint8_t *len);

#endif