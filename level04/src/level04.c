#include <stdio.h>
#include <stdint.h>
#include <unistd.h>


int32_t main (int32_t argc, char **argv)
{
    pid_t local_var_ac = fork();
    char local_var_20[32];
    uint32_t local_var_a8 = 0;
    uint32_t local_var_1c = 0;
    pid_t local_var_a0 = 0;
    pid_t local_var_a4 = 0;


    memset(local_var_20, 0, 0x20);
    if (local_var_ac == 0)
    {
        prctl(1, 1);
        ptrace(0, 0, 0, 0);
        puts("Give me some shellcode, k");
        gets(local_var_20);
    }
    else
    {
        do
        {
            wait(local_var_1c);
            local_var_a0 = local_var_1c;
            local_var_a0 &= 0x7f;
            if (local_var_a0 != 0)
            {
                puts("child is exiting...");
                break;
            }
            local_var_a4 = local_var_1c;
            if (((local_var_a4 & 0x7f) + 1) != 0)
            {
                puts("child is exiting...");
                break;
            }
            local_var_a8 = ptrace(3, local_var_ac, 0x2c, 0);
        } while (local_var_a8 != 0xb);

        puts("no exec() for you");
        kill(local_var_ac, 0x9);
    }
    return (0);
}

/**
 * Source code file has been recreated from assembly by myself.
 */