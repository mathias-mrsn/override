#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>

int32_t main (__attribute__((unused))int32_t argc, __attribute__((unused))char **argv)
{
    uint32_t    local_var_8c = 0;
    char        local_var_28[0x64];

    fgets(local_var_28, 0x64, stdin);
    while (1)
    {
        if (local_var_28[local_var_8c] > 0x40 && local_var_28[local_var_8c] < 0x5a)
        {
            local_var_28[local_var_8c] ^= 0x20;
        }
        local_var_8c++;
        if ((strlen(&local_var_28[0]) - 1) >= local_var_8c)
            break;
    }
    printf(local_var_28);
    exit(0);
}

/**
 * Source code file has been recreated from assembly by myself.
 */

