#include <stdio.h>
#include <unistd.h>
#include <string.h>

char a_user_name[256];

int verify_user_name (void)
{
    puts("verifying username....\n");
    if (strncmp(a_user_name, "dat_wil", 7) == 0)
        return (0);
    return (1);
}

int verify_user_pass (char *password)
{
    return (strncmp(password, "admin", 5));
}

int main (__attribute__((unused))int argc, __attribute__((unused))char **argv)
{
    char buffer[0x40]; // 0x1c(%esp)
    int n = 0; // 0x5c(%esp)
    memset(buffer, 0, 0x10);
    puts("********* ADMIN LOGIN PROMPT *********");
    printf("Enter Username: ");
    fgets(a_user_name, 256, stdin);
    n = verify_user_name();
    if (n != 0)
    {
        puts("nope, incorrect username...\n");
        return (1);
    }
    puts("Enter Password: ");
    fgets(buffer, 0x64, stdin);
    n = verify_user_pass(buffer);
    if (n != 0 )
    {
        puts("nope, incorrect password...\n");
        return (1);
    }
    return (0);
}

/**
 * Source code file has been recreated from assembly by myself.
 */
