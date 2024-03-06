#include <stddef.h>
#include <stdio.h>
#include <dlfcn.h>
#include <string.h>
#include <strings.h>


int main()
{
    void *handle = dlopen("./libasm.so", RTLD_LAZY);
    char * (*strcmpASM)(const char *, const char *) = dlsym(handle, "strcmp"); // Change by the func name, ex: "stpbrk"
    if(!strcmpASM)
        printf("%s\n", dlerror());
 
    printf("strcmpASM: %d\n", strcmpASM("Hello World!", "Hello World!"));
    printf("strcmp: %d\n", strcmp("Hello World!", "Hello World!"));
    
    return 0;
}
