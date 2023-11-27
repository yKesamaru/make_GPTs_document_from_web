#!/bin/bash

urls=(
https://pillow.readthedocs.io/en/stable/installation.html
https://pillow.readthedocs.io/en/stable/installation.html#warnings
https://pillow.readthedocs.io/en/stable/installation.html#python-support
https://pillow.readthedocs.io/en/stable/installation.html#basic-installation
https://pillow.readthedocs.io/en/stable/installation.html#building-from-source
https://pillow.readthedocs.io/en/stable/installation.html#platform-support
https://pillow.readthedocs.io/en/stable/installation.html#old-versions
https://pillow.readthedocs.io/en/stable/handbook/index.html
https://pillow.readthedocs.io/en/stable/handbook/overview.html
https://pillow.readthedocs.io/en/stable/handbook/tutorial.html
https://pillow.readthedocs.io/en/stable/handbook/concepts.html
https://pillow.readthedocs.io/en/stable/handbook/appendices.html
https://pillow.readthedocs.io/en/stable/reference/index.html
https://pillow.readthedocs.io/en/stable/reference/Image.html
https://pillow.readthedocs.io/en/stable/reference/ImageChops.html
https://pillow.readthedocs.io/en/stable/reference/ImageCms.html
https://pillow.readthedocs.io/en/stable/reference/ImageColor.html
https://pillow.readthedocs.io/en/stable/reference/ImageDraw.html
https://pillow.readthedocs.io/en/stable/reference/ImageEnhance.html
https://pillow.readthedocs.io/en/stable/reference/ImageFile.html
https://pillow.readthedocs.io/en/stable/reference/ImageFilter.html
https://pillow.readthedocs.io/en/stable/reference/ImageFont.html
https://pillow.readthedocs.io/en/stable/reference/ImageGrab.html
https://pillow.readthedocs.io/en/stable/reference/ImageMath.html
https://pillow.readthedocs.io/en/stable/reference/ImageMorph.html
https://pillow.readthedocs.io/en/stable/reference/ImageOps.html
https://pillow.readthedocs.io/en/stable/reference/ImagePalette.html
https://pillow.readthedocs.io/en/stable/reference/ImagePath.html
https://pillow.readthedocs.io/en/stable/reference/ImageQt.html
https://pillow.readthedocs.io/en/stable/reference/ImageSequence.html
https://pillow.readthedocs.io/en/stable/reference/ImageShow.html
https://pillow.readthedocs.io/en/stable/reference/ImageStat.html
https://pillow.readthedocs.io/en/stable/reference/ImageTk.html
https://pillow.readthedocs.io/en/stable/reference/ImageWin.html
https://pillow.readthedocs.io/en/stable/reference/ExifTags.html
https://pillow.readthedocs.io/en/stable/reference/TiffTags.html
https://pillow.readthedocs.io/en/stable/reference/JpegPresets.html
https://pillow.readthedocs.io/en/stable/reference/PSDraw.html
https://pillow.readthedocs.io/en/stable/reference/PixelAccess.html
https://pillow.readthedocs.io/en/stable/reference/PyAccess.html
https://pillow.readthedocs.io/en/stable/reference/features.html
https://pillow.readthedocs.io/en/stable/PIL.html
https://pillow.readthedocs.io/en/stable/reference/plugins.html
https://pillow.readthedocs.io/en/stable/reference/internal_design.html
https://pillow.readthedocs.io/en/stable/porting.html
https://pillow.readthedocs.io/en/stable/about.html
https://pillow.readthedocs.io/en/stable/about.html#goals
https://pillow.readthedocs.io/en/stable/about.html#license
https://pillow.readthedocs.io/en/stable/about.html#why-a-fork
https://pillow.readthedocs.io/en/stable/about.html#what-about-pil
https://pillow.readthedocs.io/en/stable/releasenotes/index.html
https://pillow.readthedocs.io/en/stable/releasenotes/10.1.0.html
https://pillow.readthedocs.io/en/stable/releasenotes/10.0.1.html
https://pillow.readthedocs.io/en/stable/releasenotes/10.0.0.html
https://pillow.readthedocs.io/en/stable/releasenotes/9.5.0.html
https://pillow.readthedocs.io/en/stable/releasenotes/9.4.0.html
https://pillow.readthedocs.io/en/stable/releasenotes/9.3.0.html
https://pillow.readthedocs.io/en/stable/releasenotes/9.2.0.html
https://pillow.readthedocs.io/en/stable/releasenotes/9.1.1.html
https://pillow.readthedocs.io/en/stable/releasenotes/9.1.0.html
https://pillow.readthedocs.io/en/stable/releasenotes/9.0.1.html
https://pillow.readthedocs.io/en/stable/releasenotes/9.0.0.html
https://pillow.readthedocs.io/en/stable/releasenotes/8.4.0.html
https://pillow.readthedocs.io/en/stable/releasenotes/8.3.2.html
https://pillow.readthedocs.io/en/stable/releasenotes/8.3.1.html
https://pillow.readthedocs.io/en/stable/releasenotes/8.3.0.html
https://pillow.readthedocs.io/en/stable/releasenotes/8.2.0.html
https://pillow.readthedocs.io/en/stable/releasenotes/8.1.2.html
https://pillow.readthedocs.io/en/stable/releasenotes/8.1.1.html
https://pillow.readthedocs.io/en/stable/releasenotes/8.1.0.html
https://pillow.readthedocs.io/en/stable/releasenotes/8.0.1.html
https://pillow.readthedocs.io/en/stable/releasenotes/8.0.0.html
https://pillow.readthedocs.io/en/stable/releasenotes/7.2.0.html
https://pillow.readthedocs.io/en/stable/releasenotes/7.1.2.html
https://pillow.readthedocs.io/en/stable/releasenotes/7.1.1.html
https://pillow.readthedocs.io/en/stable/releasenotes/7.1.0.html
https://pillow.readthedocs.io/en/stable/releasenotes/7.0.0.html
https://pillow.readthedocs.io/en/stable/releasenotes/versioning.html
https://pillow.readthedocs.io/en/stable/deprecations.html
)

# 配列の各要素に対してループ
for (( i=0; i<${#urls[@]}; i++ )); do
    # 出力ファイル名に連番を使用
    output_file=$(printf "%02d_output.pdf" $((i+1)))
    # wkhtmltopdf コマンドを実行
    wkhtmltopdf "${urls[i]}" "$output_file"
done

echo "PDF変換完了"