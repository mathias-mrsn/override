#include <stdio.h>
#include <stdlib.h>

int main (__attribute__((unused)) int argc, __attribute__((unused)) char **argv)
{
    int i; // Declare an integer variable

    puts("***********************************");
    puts("* \t     -Level00 -\t\t  *");
    puts("***********************************");
    printf("Password:");

    scanf("%d", &i); // Read an integer from stdin and store it in i

    if (i == 0x149c) // Compare the value in i with 0x149c
    {
        puts("\nAuthenticated!");
        system("/bin/sh"); // Execute the shell
    }
    else
    {
        puts("\nInvalid Password!");
    }
    return (0);
}