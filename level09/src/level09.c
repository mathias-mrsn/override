#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct s_struct
{
    char msg[0x8c]; // 0x0
    char username[0x28]; // 0x8c
    int len; // 0xb4
} t_struct; // len = 0xc0

void secret_backdoor (void)
{
    char buffer[0x80];

    fgets(buffer, 0x80, stdin);
    system(buffer);
}

void set_msg (t_struct *msg)
{
    char buffer[0x400];

    memset(buffer, 0, 0x80);
    puts(">: Msg @Unix-Dude");
    printf(">>: ");
    fgets(buffer, 0x400, stdin);
    strncpy(msg->msg, buffer, msg->len);
}

void set_username (t_struct *msg)
{
    char buffer[0x90];

    memset(buffer, 0, 0x10);
    puts(">: Enter your username");
    printf(">>: ");
    fgets(buffer, 0x80, stdin);

    int32_t _rbp = 0;
    while(_rbp < 0x28 && buffer[_rbp] != 0)
    {
        msg->username[_rbp] = buffer[_rbp];
        _rbp++;
    }
    printf(">: Welcome, %s", msg->username);
}

void handle_msg (void)
{
    t_struct msg;

    memset(msg.username, 0, 0x28);
    set_username(&msg);
    set_msg(&msg);
    puts(">: Msg sent!");
}

int main() {
    puts("--------------------------------------------\n|   ~Welcome to l33t-m$n ~    v1337        |\n--------------------------------------------");
    handle_msg();
    return 0;
}

/**
 * Source code file has been recreated from assembly by myself.
 */
