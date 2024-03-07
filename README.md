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
int strcmp(const char *s1, const char *s2);
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
int strncmp(const char *s1, const char *s2, size_t n);
<br>
The `strncmp()` function compares the first `n` characters of the two strings `s1` and `s2`.
`strncmp()` returns an integer indicating the result of the comparison, as follows:
    • 0, if the first n characters of s1 and s2 are equal;
    • a negative value if the first differing character in s1 is less than the corresponding character in s2;
    • a positive value if the first differing character in s1 is greater than the corresponding character in s2.
</details>


<details>
<summary>strcasecmp ?</summary>
<br>
```
    int strcasecmp(const char *s1, const char *s2);
```
<br>
The `strcasecmp()` function compares the two strings `s1` and `s2` ignoring case.
`strcasecmp()` returns an integer indicating the result of the comparison, as follows:
    • 0, if the s1 and s2 are equal (case-insensitive);
    • a negative value if s1 is less than s2 (case-insensitive);
    • a positive value if s1 is greater than s2 (case-insensitive).
</details>


<details>
<summary>strpbrk ?</summary>
<br>
char *strpbrk(const char *s1, const char *s2);
<br>
The `strpbrk()` function locates the first occurrence in the string `s1` of any character from the string `s2`.
`strpbrk()` returns a pointer to the location of the first matching character or a null pointer if no match is found.
</details>

<details>
<summary>strcspn ?</summary>
<br>
size_t strcspn(const char *s1, const char *s2);
<br>
The `strcspn()` function calculates the length of the initial segment of the string `s1` that consists of characters not in the string `s2`.
`strcspn()` returns the number of characters in the initial segment until the first occurrence of any character from `s2`.
</details>

## {E} Results:

![STRCMP](https://progress-bar.dev/100/?title=strcmp&color=4CAF00)
![STRNCMP](https://progress-bar.dev/90/?title=strncmp&color=4CBF50)
![STRCASECMP](https://progress-bar.dev/100/?title=strcasecmp&color=4CA50)
![STRPBRK](https://progress-bar.dev/100/?title=strpbrk&color=4CAF50)
![STRCSPN](https://progress-bar.dev/100/?title=strcspn&color=4CAF50)
![STRCHR](https://progress-bar.dev/100/?title=strchr&color=4CAF50)
![STRRCHR](https://progress-bar.dev/100/?title=strrchr&color=4CAF50)
![STRSTR](https://progress-bar.dev/100/?title=strstr&color=4CAF50)
![STRLEN](https://progress-bar.dev/100/?title=strlen&color=4CAF50)
![MEMCPY](https://progress-bar.dev/100/?title=memcpy&color=4CAF50)
![MEMSET](https://progress-bar.dev/100/?title=memset&color=4CAF50)
![MEMMOVE](https://progress-bar.dev/0/?title=memmove&color=4CAF50)