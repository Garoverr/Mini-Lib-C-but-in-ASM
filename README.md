# Mini Lib C but in ASM

## Description:

Write some LibC functions in asm (NASM).
There was 12 mandatory funcs to do :
- strcmp
- strncmp
- strcasecmp
- strpbrk
- strcspn
- strchr
- strrchr
- strstr
- strlen
- memcpy
- memset
- memmove

<details>
<summary>strcmp ?</summary>
<br>
            • int strcmp(const char *s1, const char *s2);
<br>
The  strcmp()  function compares the two strings s1 and s2.
strcmp() returns an integer indicating the result of the comparison, as
       follows:

       • 0, if the s1 and s2 are equal;
       • a negative value if s1 is less than s2;
       • a positive value if s1 is greater than s2.
</details>



<details>
<summary>strncmp ?</summary>
<br>
            • int strncmp(const char *s1, const char *s2, size_t n);
<br>
The `strncmp()` function compares the first `n` characters of the two strings `s1` and `s2`.
`strncmp()` returns an integer indicating the result of the comparison, as 
        follows:
        
        • 0, if the first n characters of s1 and s2 are equal;
        • a negative value if the first differing character in s1 is less than the corresponding character in s2;
        • a positive value if the first differing character in s1 is greater than the corresponding character in s2.
</details>


<details>
<summary>strcasecmp ?</summary>
<br>
            • int strcasecmp(const char *s1, const char *s2);
<br>
The `strcasecmp()` function compares the two strings `s1` and `s2` ignoring case.
`strcasecmp()` returns an integer indicating the result of the comparison, as 
        follows:

        • 0, if the s1 and s2 are equal (case-insensitive);
        • a negative value if s1 is less than s2 (case-insensitive);
        • a positive value if s1 is greater than s2 (case-insensitive).
</details>


<details>
<summary>strpbrk ?</summary>
<br>
    • char *strpbrk(const char *s1, const char *s2);
<br>
The `strpbrk()` function locates the first occurrence in the string `s1` of any character from the string `s2`.
`strpbrk()` returns a pointer to the location of the first matching character or a null pointer if no match is found.
</details>



<details>
<summary>strcspn ?</summary>
<br>
            • size_t strcspn(const char *s1, const char *s2);
<br>
The `strcspn()` function calculates the length of the initial segment of the string `s1` that consists of characters not in the string `s2`.
`strcspn()` returns the number of characters in the initial segment until the first occurrence of any character from `s2`.
</details>


<details>
<summary>strchr ?</summary>
<br>
            • char *strchr(const char *s, int c);
<br>
The strchr() function locates the first occurrence of the specified character (c) in the string pointed to by s.
strchr() returns a pointer to the located character, or NULL if the character is not found in the string.
</details>


<details>
<summary>strrchr ?</summary>
<br>
            • char *strrchr(const char *s, int c);
<br>
The strrchr() function locates the last occurrence of the specified character (c) in the string pointed to by s.
strrchr() returns a pointer to the located character, or NULL if the character is not found in the string.
</details>


<details>
<summary>strstr ?</summary>
<br>
            • char *strstr(const char *haystack, const char *needle);
<br>
The strstr() function finds the first occurrence of the substring needle in the string haystack.
strstr() returns a pointer to the located substring, or NULL if the substring is not found in the string.
</details>


<details>
<summary>strlen ?</summary>
<br>
            • size_t strlen(const char *s);
<br>
The strlen() function calculates the length of the string pointed to by s, excluding the terminating null byte ('\0').
strlen() returns the number of characters in the string.
</details>


<details>
<summary>memcpy ?</summary>
<br>

            • void *memcpy(void *dest, const void *src, size_t n);
<br>
The memcpy() function copies n bytes from the source memory area (src) to the destination memory area (dest).
:triangular_flag_on_post: The function does not check for the overlapping of source and destination memory blocks.

The parameters are as follows:

        dest: A pointer to the destination memory area where the data will be copied.
        src: A pointer to the source memory area from where the data will be copied.
        n: The number of bytes to be copied.
.
</details>


<details>
<summary>memset ?</summary>
<br>
            • void *memset(void *s, int c, size_t n);
<br>
The memset() function fills the first n bytes of the memory area pointed to by s with the constant byte c.

The parameters are as follows:

        s: A pointer to the memory area to be filled.
        c: The byte value to be set.
        n: The number of bytes to be set to the value c.

</details>

<details>
<summary>memmove ?</summary>
<br>
            • void *memmove(void *dest, const void *src, size_t n);
<br>
The memmove() function copies n bytes from the source memory area (src) to the destination memory area (dest). It handles overlapping memory regions correctly, ensuring that the data is copied accurately regardless of the potential overlap.

The parameters are as follows:

        dest: A pointer to the destination memory area where the data will be copied.
        src: A pointer to the source memory area from where the data will be copied.
        n: The number of bytes to be copied.

Unlike memcpy, memmove is safe to use when the source and destination memory areas overlap. It provides a reliable way to move data within a buffer without unintended side effects.
</details>

## {E} Results:

![STRCMP](https://progress-bar.dev/100/?title=strcmp&color=0F2300)
![STRNCMP](https://progress-bar.dev/90/?title=strncmp&color=0F2300)
![STRCASECMP](https://progress-bar.dev/100/?title=strcasecmp&color=0F2300)
![STRPBRK](https://progress-bar.dev/100/?title=strpbrk&color=0F2300)
![STRCSPN](https://progress-bar.dev/100/?title=strcspn&color=0F2300)
![STRCHR](https://progress-bar.dev/100/?title=strchr&color=0F2300)
![STRRCHR](https://progress-bar.dev/100/?title=strrchr&color=0F2300)
![STRSTR](https://progress-bar.dev/100/?title=strstr&color=0F2300)
![STRLEN](https://progress-bar.dev/100/?title=strlen&color=0F2300)
![MEMCPY](https://progress-bar.dev/100/?title=memcpy&color=0F2300)
![MEMSET](https://progress-bar.dev/100/?title=memset&color=0F2300)
![MEMMOVE](https://progress-bar.dev/0/?title=memmove&color=000000)