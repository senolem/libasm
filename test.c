#include <stdio.h>

extern int ft_strcmp(char *s1, char *s2);

int main() {
    char s1[] = "bonjour";
    char s2[] = "bonjour";
    char s3[] = "111112";
    char s4[] = "111111";
    char s5[] = "222221";
    char s6[] = "222222";

    printf("%i\n", ft_strcmp(s1, s2));
    printf("%i\n", ft_strcmp(s3, s4));
    printf("%i\n", ft_strcmp(s5, s6));
}
