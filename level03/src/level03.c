#include <time.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdint.h>

void prog_timeout (void)
{
    exit(1);
}

void clear_stdin (void)
{
    uint8_t c = 0x0;

    while (c != 0xa)
    {
        c = getchar();
    }
}

uint32_t get_unum (void)
{
    uint32_t n = 0x0;

	fflush(stdout);
	scanf("%u", &n);
	clear_stdin();
	return (n);
}

void decrypt (uint32_t n)
{
    uint32_t t[4] = {
        0x757c7d51, // -0x1d(%ebp)
        0x67667360, // -0x19(%ebp)
        0x7b66737e, // -0x15(%ebp)
        0x33617c7d // -0x11(%ebp)
    };
    __attribute__((unused))uint32_t i = 0x0; // -0xd(%ebp)
    __attribute__((unused))uint32_t j = -1; // -0x2c(%ebp)
    uint32_t k = 0x0; // -0x28(%ebp)
    uint32_t len = 0x0; // -0x24(%ebp)

    len = strlen((char *)&t[0]);

    while (k != len)
    {
        *(t+k) = *(t+k) ^ n;
        k++;
    }
    if (strncmp((char *)&t[0], "Congratulations!", 17) == 0)
    {
		system("/bin/sh");
    }
	else
    {
		puts("\nInvalid Password");
    }
    
}

void test (uint32_t n, uint32_t m)
{
    uint32_t i = m - n;
    if (i > 0x15)
    {
        decrypt(rand());
    } else {
        switch (i)
        {
            case 0x1:
            case 0x2:
            case 0x3:
            case 0x4:
            case 0x5:
            case 0x6:
            case 0x7:
            case 0x8:
            case 0x9:
            case 0xa:
            case 0xb:
            case 0xc:
            case 0xd:   
            case 0xe:
            case 0xf:
            case 0x10:
            case 0x11:
            case 0x12:
            case 0x13:
            case 0x14:
            case 0x15:
                decrypt(i);
                break;
        }
    }
}

int32_t main (__attribute__((unused))int32_t argc, __attribute__((unused))char **argv)
{
    uint32_t n;

    srand(time(0x0));
    puts("***********************************");
    puts("*\t\tlevel03\t\t**");
    puts("***********************************");
    printf("Password:");
    scanf("%d", &n);
    test(n, 0x1337d00d);
    return (0x0);
}

/**
 * Source code file has been recreated from assembly by myself.
 */