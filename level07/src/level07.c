#include <stdio.h>
#include <stdint.h>

uint32_t get_unum(void) {
    uint32_t n = 0;

    fflush(stdout);
    scanf("%u", &n);
    clear_stdin();
    return n;
}

int32_t store_number (char *buf)
{
    uint32_t local__10;
    uint32_t local__c;

    printf(" Number: ");
    local__10 = get_unum();
    printf(" Index: ");
    local__c = get_unum();

    if (local__c % 3 == 0 || local__10 >> 0x18 == 0xb7)
    {
        printf(" *** ERROR! ***\n");
        printf("   This index is reserved for wil!\n");
        printf(" *** ERROR! ***\n");
        return (1);
    }
    buf[local__c * 4] = local__10;
    return (0);
}

int32_t read_number (char * buf)
{
    uint32_t local__c = 0;
    printf(" Index:");
    local__c = get_unum();
    printf(" Number at data[%u] is %u\n", local__c, buf[local__c * 4]);
    return (0);
}

int32_t main (__attribute__((unused))int32_t argc, __attribute__((unused))char **argv, __attribute__((unused))char **envp)
{
    char ** local_1c = argv;
    char ** local_18 = envp;

    uint32_t local_1b4 = 0;
    uint32_t local_1b8[0x14];
    char     local_24[0x64] = {0};

    while (*local_1c)
    {
        memset(*local_1c, 0, strlen(*local_1c));
    }
    while (*local_18)
    {
        memset(*local_18, 0, strlen(*local_18));
    }

    puts("----------------------------------------------------\n  Welcome to wil's crappy number storage service!   \n----------------------------------------------------\n Commands:                                          \n    store - store a number into the data storage    \n    read  - read a number from the data storage     \n    quit  - exit the program                        \n----------------------------------------------------\n   wil has reserved some storage :>                 \n----------------------------------");
    
    while(1)
    {
        printf("Input command: ");
        local_1b4 = 1;
        fgets(local_1b8, 0x14, stdin);
        local_1b8[strlen(local_1b8) - 1] = 0;

        if (strncmp(local_1b8, "store", 5) == 0)
        {
            local_1b4 = store_number(local_24);
        } else if (strncmp(local_1b8, "read", 4) == 0)
        {
            local_1b4 = read_number(local_24);
        } else if (strncmp(local_1b8, "quit", 4) == 0)
        {
            break;
        }

        if (local_1b4 == 0)
        {
            printf(" Failed to do %s command\n", local_1b8);
        } else
        {
            printf(" Completed %s command successfully\n", local_1b8);
        }
        memset(local_1b8, 0, 0x14);
    }
}

/**
 * Source code file has been recreated from assembly by myself.
 */