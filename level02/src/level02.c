#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

int main (__attribute__((unused))int argc, __attribute__((unused))char **argv) {

    char buffer_1[0x60]; // -0x70(%rbp)
    char buffer_2[0x30]; // -0xa0(%rbp)
    char buffer_3[0x70]; // -0x110(%rbp)
    FILE *fd; // -0x8(%rbp)
    int len; // -0xc(%rbp)

    memset(buffer_1, 0, 0xc);
    memset(buffer_2, 0, 0x5);
    memset(buffer_3, 0, 0xc);
    fd = fopen("/home/users/level03/.pass", "r");
    if (fd == 0)
    {
        fwrite("ERROR: failed to open password file\n", 1, 0x24, stderr);
        exit(1);
    }
    len = fread(buffer_2, 1, 0x29, fd);
    buffer_2[strcspn(buffer_2, "\n")] = 0;
    if (len != 0x29)
    {
        fwrite("ERROR: failed to read password file\n", 1, 0x24, stderr);
        fwrite("ERROR: failed to read password file\n", 1, 0x24, stderr);
        exit(1);
    }
    fclose(fd);
    puts("===== [ Secure Access System v1.0 ] =====");
	puts("/***************************************\\");
	puts("| You must login to access this system. |");
	puts("\\**************************************/");
	printf("--[ Username: ");
    fgets(buffer_1, 0x64, stdin);
    buffer_1[strcspn(buffer_1, "\n")] = 0;
    printf("--[ Password: ");
    fgets(buffer_3, 0x64, stdin);
    buffer_3[strcspn(buffer_3, "\n")] = 0;
    puts("*****************************************");

    if (strncmp(buffer_2, buffer_3, 0x29) == 0)
    {
        printf("Greetings, %s!\n", buffer_1);
        system("/bin/sh");
        return (0);
    }
    printf(buffer_1);
    puts(" does not have access!");
    exit(1);
}

/**
 * Source code file has been recreated from assembly by myself.
 */