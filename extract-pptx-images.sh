#!/bin/bash

PPTX_FILE="/Users/a1-6/Documents/code/trae/efcio/合作伙伴.pptx"
OUTPUT_DIR="/Users/a1-6/Documents/code/trae/efcio/合作伙伴-图片"
FINAL_DIR="/Users/a1-6/Documents/code/trae/efcio/efcio-vue/public/images/partners"

mkdir -p "$OUTPUT_DIR"
mkdir -p "$FINAL_DIR"

cd "$OUTPUT_DIR" || exit 1

unzip -q "$PPTX_FILE" 2>/dev/null

if [ -d "ppt/media" ]; then
    echo "找到图片文件夹"
    cd ppt/media || exit 1
    count=1
    for img in *; do
        if [ -f "$img" ]; then
            ext="${img##*.}"
            cp "$img" "$FINAL_DIR/$count.$ext"
            echo "复制 $img -> $count.$ext"
            count=$((count + 1))
        fi
    done
    echo "成功提取了 $((count - 1)) 张图片到 $FINAL_DIR"
else
    echo "未找到图片文件夹"
fi

rm -rf "$OUTPUT_DIR"
