#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

void log_wrapper(FILE *fd, char *str, char arg)
{
    uint32_t _len;
    char local__110[0xff];

    strcpy(local__110, str);
    _len = strlen(local__110);
    snprintf(local__110 + _len, 0xfe - _len, arg);
    local__110[strcspn(local__110, "\n")] = 0;
    fprintf(fd, "LOG: %s\n", local__110);
    return ;
}

int32_t main (__attribute__((unused))int32_t argc, __attribute__((unused))char **argv)
{
    int32_t local__94 = argc;
    char ** local__a0 = argv;
    int32_t local__78;
    FILE* local__88;
    FILE* local__80;
    uint8_t local__71;
    char local_70[0x64];

    if (local__94 != 2)
    {
        printf("Usage: %s filename\n", local__a0[1]);
    }
    local__88 = fopen("./backups/.log", "w");
    if (local__88 == 0)
    {
        printf("ERROR: Failed to open %s\n", "./backups/.log");
        exit(1);
    }
    log_wrapper(local__88, "Starting back up: ", local__a0[1]);
    local__80 = fopen(local__a0[1], "r");
    if (local__80 == 0)
    {
        printf("ERROR: Failed to open %s\n", local__a0[1]);
        exit(1);
    }
    strcpy(local_70, "./backups/");
    strncat(local_70, local__a0[1], 0x63 - strlen(local_70));

    local__78 = open(local_70, 0xc1, 0x1b0);
    if (local__78 == -1)
    {
        printf("ERROR: Failed to open %s%s\n", "./backups/", local__a0[1]);
        exit(1);
    }

    do
    {
        write(local__78, local__71, 1);
        local__71 = fgetc(local__80);
    } while (local__71 != 0xff);

    log_wrapper(local__88, "Finished back up ", local__a0[1]);
    fclose(local__80);
    close(local__78);
    return (0);
}