#include <sqlite3.h>
#include <cstdio>

int main()
{
    std::printf("SQLite version: %s\n", sqlite3_libversion());
}
