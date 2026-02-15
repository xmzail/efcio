#!/bin/bash

PARTNERS_DIR="/Users/a1-6/Documents/code/trae/efcio/efcio-vue/public/images/partners"

cd "$PARTNERS_DIR" || exit 1

echo "开始转换EMF文件..."

count=0
for emf_file in *.emf; do
    if [ -f "$emf_file" ]; then
        base_name=$(basename "$emf_file" .emf)
        png_file="${base_name}.png"
        
        echo "转换: $emf_file -> $png_file"
        
        if convert "$emf_file" -background white -flatten "$png_file" 2>/dev/null; then
            echo "  ✓ 成功"
            count=$((count + 1))
        else
            echo "  ✗ 失败 (此格式可能不支持)"
            # 尝试使用inkscape或其他方法，但可能没有安装
        fi
    fi
done

echo ""
echo "转换完成！共转换了 $count 个文件"
echo ""
echo "注意：EMF是Windows专用格式，macOS上转换质量可能有限。"
echo "建议在Windows上打开PPT另存为图片以获得最佳效果。"
