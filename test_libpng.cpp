#include <png.h>
#include <cstdio>

int main()
{
    std::printf("libpng version number: %u\n", png_access_version_number());
}
