#include <stdio.h>
#include <string.h>
#include <stdbool.h>

int     add(int, int);
void    toLowerCase(char[], int);
void    toUpperCase(char[], int);

bool    test_add();
bool    test_toLowerCase();
bool    test_toUpperCase();

void    pass(char[], bool);

int main() {
    pass("test_add", test_add());
    pass("test_toLowerCase", test_toLowerCase());
    pass("test_toUpperCase", test_toUpperCase());

    return 0;
}

bool    test_add() {
    int a = add(12, 43);
    return a == 55; 
}

bool    test_toLowerCase() {
    char s[] = "TEST";
    toLowerCase(s, sizeof(s));
    return strcmp(s, "test") == 0;
}

bool    test_toUpperCase() {
    char s[] = "test";
    toUpperCase(s, sizeof(s));
    return strcmp(s, "TEST") == 0;
}

void   pass(char name[], bool passed) {
    if(passed) {
        printf("%s: Ok\n", name);
    } else {
        printf("%s: Fail\n", name);
    }
}