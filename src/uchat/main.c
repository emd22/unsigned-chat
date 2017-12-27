#include <server.h>
#include <client.h>

#include <stdio.h>
#include <string.h>
#include <signal.h>
#include <stdlib.h>
#include <unistd.h>

static server_t server;
static client_t client;

void try_close(int fd) {
    if (fd != 0) {
        close(fd);
    }
}

void sig_handler(int sig_no) {
    if (sig_no == SIGINT) {
        printf("Got SIGINT, closing sockets...\n");
        try_close(server.sock_fd);
        try_close(server.new_sock_fd);
        try_close(client.sock_fd);
        exit(0);
    }
}

void run_server(int port) {
    server = server_start(port);

    uint8_t dat_len = 0;
    uint8_t message[255];

    memset(message, 0, 255);

    while (message[0] != SERVER_EXIT_1 && 
           message[1] != SERVER_EXIT_2) {
        while (server_poll_data(&server, &client, &dat_len) == 0);

        server_retrieve_data(message, dat_len, &server);

        printf("Got message: \"%s\", %d\n", message, dat_len);
    }
}

void run_client(char *host, int port) {
    client = client_start(host, port);

    char dat_out[] = "Hello, World!";
    uint8_t len = strlen(dat_out);

    client_send(dat_out, len, &client);
}

int main(int argc, char *argv[]) {
    client.sock_fd = 0;
    server.sock_fd = 0;
    server.new_sock_fd = 0;

    if (signal(SIGINT, sig_handler) == SIG_ERR) {
        printf("Can't reach SIGINT.\n");
    }

    if (argc < 2) {
        printf("Usage: <process> <server|client>\nclient commands:\n\ttype '!K' to kill server\n");
        return 1;
    }
    
    char *mode = argv[1];

    char host[] = "127.0.0.1"; //localhost
    int port = 8888;

    if (!strcmp(mode, "server")) {
        run_server(port);
    }
    else if (!strcmp(mode, "client")) {
        run_client(host, port);
        // while (client_poll_message(&client, &len) == 0);

        //char buffer[64];

        //client_retrieve(buffer, len, &client);
        //printf("got: \"%s\" : %d\n", buffer, len);
    }
    return 0;
}