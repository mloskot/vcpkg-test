#include <cstdio> // make jpeglib.h know about FILE
#include <jpeglib.h>
#include <cstdio>

int main()
{
    std::printf("libjpeg version %d\n", JPEG_LIB_VERSION);

    ::jpeg_decompress_struct cinfo;
    ::jpeg_error_mgr jerr;
    cinfo.err = jpeg_std_error(&jerr);
    ::jpeg_create_decompress(&cinfo);
    ::jpeg_destroy_decompress(&cinfo);
}
