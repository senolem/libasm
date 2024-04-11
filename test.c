#include <stdio.h>

extern char *ft_strcpy(char *dest, char *src);

int main() {
    char str[] = "salut";
    char str2[] = "bonjour";

    printf("%s\n", str);
    printf("%s\n", str2);
    printf("%s\n", ft_strcpy(str2, str));
    printf("%s\n", str);
    printf("%s\n", str2);
}