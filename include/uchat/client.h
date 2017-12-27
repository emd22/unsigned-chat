#ifndef CLIENT_H
#define CLIENT_H

#include <stdint.h>
#include <stddef.h>

typedef struct {
    int   port;
    char *host;
    int   sock_fd; //socket file descriptor
} client_t;

client_t client_start(char *host, int port);
void client_send(uint8_t *data, uint8_t data_size, client_t *client);
void client_retrieve(uint8_t *buffer, uint8_t length, client_t *client);
int client_poll_message(client_t *client, uint8_t *len);

#endif
