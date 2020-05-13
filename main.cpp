#include <iostream>
#include <emmintrin.h>
#include <immintrin.h>
#include "fileRead.h"

namespace avxBlending {
    constexpr unsigned char mask1256[] = {0, 255,  1, 255,   2, 255,   3, 255,   4, 255,   5, 255,   6, 255,   7, 255,  16, 255,  17, 255, 18, 255, 19, 255, 20, 255, 21, 255, 22, 255, 23, 255};
    constexpr unsigned char mask3478[] = {8, 255,  9, 255,  10, 255,  11, 255,  12, 255,  13, 255,  14, 255,  15, 255,  24, 255,  25, 255, 26, 255, 27, 255, 28, 255, 29, 255, 30, 255, 31, 255};

    constexpr unsigned char packed1256[] = {  1,   3,   5, 255,   9,  11,  13, 255,  255, 255, 255, 255, 255, 255, 255, 255,    1,   3,   5, 255,   9,  11,  13, 255,  255, 255, 255, 255, 255, 255, 255, 255};
    constexpr unsigned char packed3478[] = {255, 255, 255, 255, 255, 255, 255, 255,    1,   3,   5, 255,   9,  11,  13, 255,  255, 255, 255, 255, 255, 255, 255, 255,    1,   3,   5, 255,   9,  11,  13, 255};

    constexpr unsigned char minued[] = {0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1};

    constexpr unsigned char alpha[] = {0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255, 0, 0, 0, 255};
}

unsigned int start = 0;
unsigned int end = 0;
unsigned int startAVX = 0;
unsigned int endAVX = 0;

char *blending(char *backFile, char *frontFile) {
    start = clock();

    const int backBufferStart = *(reinterpret_cast<const int *>(backFile + 0x0a));
    const int frontBufferStart = *(reinterpret_cast<const int *>(frontFile + 0x0a));

    const int backWidth = *(reinterpret_cast<const int *>(backFile + 0x12));

    const int frontWidth = *(reinterpret_cast<const int *>(frontFile + 0x12));
    const int frontHeight = *(reinterpret_cast<const int *>(frontFile + 0x16));

    backFile += backBufferStart;
    frontFile += frontBufferStart;

    int startPosX = 300;
    int startPosY = 250;

    for (int posY = startPosY; posY < startPosY + frontHeight; ++posY) {
        for (int posX = startPosX; posX < startPosX + frontWidth; ++posX) {
            auto backRGBA = reinterpret_cast<unsigned char *>(backFile + posY * backWidth * 4 + posX * 4);
            auto frontRGBA = reinterpret_cast<unsigned char *>(frontFile + (posY - startPosY) * frontWidth * 4 + (posX - startPosX) * 4);

            unsigned char frontAlpha = *(frontRGBA + 3);

            for (int i = 0; i < 3; ++i) {
                *(backRGBA + i) = (*(frontRGBA + i) * frontAlpha + *(backRGBA + i) * (256 - frontAlpha)) >> 8;
            }
            *(backRGBA + 3) = 0xff;
        }
    }

    end = clock();

    backFile -= backBufferStart;
    return backFile;
}

char *blendingAVX(char *backFile, char *frontFile) {
    startAVX = clock();

    const int backBufferStart = *(reinterpret_cast<const int *>(backFile + 0x0a));
    const int frontBufferStart = *(reinterpret_cast<const int *>(frontFile + 0x0a));

    const int backWidth = *(reinterpret_cast<const int *>(backFile + 0x12));

    const int frontWidth = *(reinterpret_cast<const int *>(frontFile + 0x12));
    const int frontHeight = *(reinterpret_cast<const int *>(frontFile + 0x16));

    backFile += backBufferStart;
    frontFile += frontBufferStart;

    int startPosX = 300;
    int startPosY = 250;

    __m256i mask1256 = _mm256_loadu_si256(reinterpret_cast<const __m256i_u *>(avxBlending::mask1256));
    __m256i mask3478 = _mm256_loadu_si256(reinterpret_cast<const __m256i_u *>(avxBlending::mask3478));

    __m256i packed1256 = _mm256_loadu_si256(reinterpret_cast<const __m256i_u *>(avxBlending::packed1256));
    __m256i packed3478 = _mm256_loadu_si256(reinterpret_cast<const __m256i_u *>(avxBlending::packed3478));

    __m256i minued = _mm256_loadu_si256(reinterpret_cast<const __m256i_u *>(avxBlending::minued));
    __m256i alpha = _mm256_loadu_si256(reinterpret_cast<const __m256i_u *>(avxBlending::alpha));

    for (int posY = startPosY; posY < startPosY + frontHeight; ++posY) {
        int posX = startPosX;

        for (; posX < startPosX + frontWidth - 8; posX += 8) {
            __m256i back = _mm256_loadu_si256(reinterpret_cast<__m256i_u const *>(backFile + posY * backWidth * 4 + posX * 4));
            __m256i front = _mm256_loadu_si256(reinterpret_cast<__m256i_u const *>(frontFile + (posY - startPosY) * frontWidth * 4 + (posX - startPosX) * 4));

            __m256i front1256 = _mm256_shuffle_epi8(front, mask1256);
            __m256i front3478 = _mm256_shuffle_epi8(front, mask3478);

            __m256i back1256 = _mm256_shuffle_epi8(back, mask1256);
            __m256i back3478 = _mm256_shuffle_epi8(back, mask3478);

            __m256i frontAlpha1256 = _mm256_shufflehi_epi16(front1256, 0xff);
            __m256i frontAlpha3478 = _mm256_shufflehi_epi16(front3478, 0xff);

            frontAlpha1256 = _mm256_shufflelo_epi16(frontAlpha1256, 0xff);
            frontAlpha3478 = _mm256_shufflelo_epi16(frontAlpha3478, 0xff);

            front1256 = _mm256_mullo_epi16(front1256, frontAlpha1256);
            front3478 = _mm256_mullo_epi16(front3478, frontAlpha3478);

            __m256i backAlpha1256 = _mm256_sub_epi16(minued, frontAlpha1256);
            __m256i backAlpha3478 = _mm256_sub_epi16(minued, frontAlpha3478);

            back1256 = _mm256_mullo_epi16(back1256, backAlpha1256);
            back3478 = _mm256_mullo_epi16(back3478, backAlpha3478);

            __m256i out1256 = _mm256_add_epi16(back1256, front1256);
            __m256i out3478 = _mm256_add_epi16(back3478, front3478);

            out1256 = _mm256_shuffle_epi8(out1256, packed1256);
            out3478 = _mm256_shuffle_epi8(out3478, packed3478);
            out1256 = _mm256_add_epi64(out1256, out3478);
            out1256 = _mm256_add_epi64(out1256, alpha);

            _mm256_storeu_si256(reinterpret_cast<__m256i_u *>(backFile + posY * backWidth * 4 + posX * 4), out1256);
        }

        for (; posX < startPosX + frontWidth; ++posX) {
            auto backRGBA = reinterpret_cast<unsigned char *>(backFile + posY * backWidth * 4 + posX * 4);
            auto frontRGBA = reinterpret_cast<unsigned char *>(frontFile + (posY - startPosY) * frontWidth * 4 + (posX - startPosX) * 4);

            unsigned char frontAlpha = *(frontRGBA + 3);

            for (int i = 0; i < 3; ++i) {
                *(backRGBA + i) = (*(frontRGBA + i) * frontAlpha + *(backRGBA + i) * (256 - frontAlpha)) >> 8;
            }
            *(backRGBA + 3) = 0xff;
        }
    }

    endAVX = clock();

    backFile -= backBufferStart;
    return backFile;
}

void blending(const char *backFileName, const char *frontFileName, const char *mergeFileName, const char opt = 0) {
    size_t backFileSize = 0;
    char *backFile = readTextFromFile(backFileName, &backFileSize);

    size_t frontFileSize = 0;
    char *frontFile = readTextFromFile(frontFileName, &frontFileSize);

    char *merge = nullptr;
    if (opt == 'o')
        merge = blendingAVX(backFile, frontFile);
    else
        merge = blending(backFile, frontFile);

    writeFile(mergeFileName, merge, backFileSize);
}

int main() {
    const char *backFileName = "../Table.bmp";
    const char *frontFileName = "../AskhatCat.bmp";
    const char *mergeFileName = "../merge.bmp";
    const char *mergeAVXFileName = "../mergeAVX.bmp";

    blending(backFileName, frontFileName, mergeFileName);
    blending(backFileName, frontFileName, mergeAVXFileName, 'o');

    printf("blending:     %g\n", (end - start) / 1000000.0);
    printf("AVX blending: %g\n", (endAVX - startAVX) / 1000000.0);

    printf("speed up:     %g\n", static_cast<double >(end - start) / static_cast<double >(endAVX - startAVX));

    return 0;
}
