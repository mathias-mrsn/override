#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <sys/ptrace.h>

int32_t auth (char *str, uint32_t serial)
{
    uint32_t local_var__c;
    uint32_t local_var__10;
    uint32_t local_var__14 = 0;

    str[strcspn(str, "\n")] = 0;
    local_var__c = strnlen(str, 0x20);
    if (local_var__c <= 5)
        return (1);
    if (ptrace(0, 1, 0, 0) == -1)
    {
        puts("\033[32m.---------------------------.");
        puts("\033[31m| !! TAMPERING DETECTED !!  |");
        puts("\033[32m'---------------------------'");
        return (1);
    }
    local_var__10 = ((str[0x3] ^ 0x1337) + 0x5eeded);
    while(local_var__14 < local_var__c)
    {
        if (str[local_var__14] == ' ')
            return (1);
        local_var__10 = (str[local_var__14] ^ local_var__10) - (((((str[local_var__14] ^ local_var__10) * 0x88233b2b) - (str[local_var__14] ^ local_var__10)) << 1 ) + ((str[local_var__14] ^ local_var__10) * 0x88233b2b) << 0xa) * 0x539;
        local_var__14++;
    }
    if (local_var__10 == serial)
        return (0);
    return (1);
}

int32_t main (__attribute__((unused))int32_t argc, __attribute__((unused))char **argv)
{
    char local_var_2c[0x20];
    uint32_t local_var_28;

    puts("***********************************");
    puts("*\t\tlevel06\t\t  *");
    puts("***********************************");
    printf("-> Enter Login: ");

    fgets(local_var_2c, 0x20, stdin);

    puts("***********************************");
    puts("***** NEW ACCOUNT DETECTED ********");
    puts("***********************************");
    printf("-> Enter Serial: ");

    scanf("%u", &local_var_28);
    if (auth(local_var_2c, local_var_28) == 0)
    {
        puts("Authenticated!");
        system("/bin/sh");
        return (0);
    }
    return (1);
}

/**
 * Source code file has been recreated from assembly by myself.
 */
